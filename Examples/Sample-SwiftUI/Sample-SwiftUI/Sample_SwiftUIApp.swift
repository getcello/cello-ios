//
//  Sample_SwiftUIApp.swift
//  Sample-SwiftUI
//
//  Created by Cello Dev on 23/04/2024.
//

import SwiftUI
import CelloSDK
import JWTKit

struct Constants {
    static let productId: String = "dev.cello.so"
    static let productUserId: String = "80bdecfd-2f04-426b-8b74-cb8f820acf35"
}

@main
struct Sample_SwiftUIApp: App {
    private let tokenObserver = TokenObserver(
        productId: Constants.productId,
        productUserId: Constants.productUserId
    )
    
    init() {
        setupCello()
    }
    
    private func setupCello() {
        guard let token = tokenObserver.getToken() else {
            print("Failed to generate token.")
            return
        }
        
        Cello.initialize(for: Constants.productId, with: token) { result in
            switch result {
            case .success(let configuration):
                Cello.showFab()
                print(configuration)
                tokenObserver.startObserving()
            case .failure(let error):
                print("Initialization failed with error:", error)
            }
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class TokenObserver: NSObject {
    private var productId: String
    private var productUserId: String
    
    private var tokenAboutToExpireObserver: NSObjectProtocol?
    private var tokenHasExpiredObserver: NSObjectProtocol?
    
    init(productId: String, productUserId: String) {
        self.productId = productId
        self.productUserId = productUserId
    }
    
    private func getSecretFromConfig() -> String? {
        guard let path = Bundle.main.path(forResource: "config", ofType: "plist") else {
            return nil
        }
        
        let plist = NSDictionary(contentsOfFile: path)
        
        return plist?.object(forKey: "JWT_SECRET") as? String
    }
    
    func getToken() -> String? {
        struct MyPayload: JWTPayload {
            var productId: String
            var productUserId: String
            var iat: IssuedAtClaim
            
            func verify(using signer: JWTSigner) throws {
            }
        }
        
        guard let secret = getSecretFromConfig() else {
            print("Error: Secret not found.")
            return nil
        }

        let signers = JWTSigners()
        signers.use(.hs512(key: secret))

        let tokenPayload = MyPayload(
            productId: self.productId,
            productUserId: self.productUserId,
            iat: IssuedAtClaim(value: Date())
        )
        
        do {
            let jwt = try signers.sign(tokenPayload)
            return jwt
        } catch {
            print("Error signing JWT: \(error)")
            return nil
        }
    }
    
    private func updateCelloToken() {
        guard let newToken = getToken() else {
            print("Failed to regenerate token.")
            return
        }
        
        Cello.updateToken(token: newToken) { result in }
    }
    
    func startObserving() {
        tokenAboutToExpireObserver = NotificationCenter.default.addObserver(forName: .CelloTokenAboutToExpire, object: nil, queue: .main) { [weak self] _ in
            print("Expiring")
            self?.updateCelloToken()
        }

        tokenHasExpiredObserver = NotificationCenter.default.addObserver(forName: .CelloTokenHasExpired, object: nil, queue: .main) { [weak self] _ in
            print("Expired")
            self?.updateCelloToken()
        }
    }
    
    private func stopObserving() {
        if let observer = tokenAboutToExpireObserver {
            NotificationCenter.default.removeObserver(observer)
        }
        
        if let observer = tokenHasExpiredObserver {
            NotificationCenter.default.removeObserver(observer)
            tokenHasExpiredObserver = nil
        }
    }
    
    deinit {
        stopObserving()
    }
}
