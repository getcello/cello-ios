//
//  ContentView.swift
//  Sample-SwiftUI
//
//  Created by Cello Dev on 23/04/2024.
//

import SwiftUI
import CelloSDK

struct ContentView: View {
    @State private var showFab: Bool = true
    @State private var selectedLanguage: String = "en"
    @State private var activeUcc: [String: String]?

    let languages = ["en", "de"]

    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("Settings")) {
                        Toggle("Show FAB", isOn: $showFab)
                            .onChange(of: showFab) { newValue in
                                if newValue {
                                    Cello.showFab()
                                } else {
                                    Cello.hideFab()
                                }
                            }
                        
                        Button("Custom Fab launcher") {
                            Cello.openWidget()
                        }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)

                        Picker("Language", selection: $selectedLanguage) {
                            ForEach(languages, id: \.self) { lang in
                                Text(lang.uppercased()).tag(lang)
                            }
                        }
                        .onChange(of: selectedLanguage) { newLang in
                            Cello.changeLanguage(to: SupportedLanguage(rawValue: newLang)!)
                        }
                        
                        // Buttons and Actions
                        Button("Get Active UCC") {
                            if let ucc = Cello.getActiveUcc() {
                                self.activeUcc = ucc
                            }
                        }
                    }

                    Section(header: Text("Information")) {
                        if let uccInfo = activeUcc {
                            ForEach(uccInfo.sorted(by: <), id: \.key) { key, value in
                                HStack {
                                    Text("\(key):")
                                        .bold()
                                    Spacer()
                                    Text(value)
                                }
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Cello Demo")
            }
        }
    }
}
