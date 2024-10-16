Pod::Spec.new do |spec|
  spec.name                = "CelloSDK"
  spec.version             = "0.2.1"
  spec.summary             = "The Cello iOS SDK, for integrating Cello referral component into your iOS application."
  spec.description         = "The Cello iOS SDK, for integrating Cello referral component into your iOS application. The SDK supports iOS 15+"
  spec.homepage            = "https://github.com/getcello/cello-ios"
  spec.license             = { :type => "Apache 2.0", :file => "LICENSE" }
  spec.author              = { "Cello Dev" => "developer@cello.so" }
  spec.platform            = :ios, '15.0'
  spec.source              = { :http => 'https://github.com/getcello/cello-ios-sp/releases/download/0.2.1/CelloSDK.xcframework.zip' }
  spec.preserve_paths      = "CelloSDK.xcframework", "dSYM"
  spec.vendored_frameworks = 'CelloSDK.xcframework'
  spec.requires_arc        = true
  spec.frameworks          = ["UIKit", "Foundation", "WebKit"]
end
