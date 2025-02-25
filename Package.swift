// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CelloSDK",
  products: [
    .library(
        name: "CelloSDK",
        targets: ["CelloSDK"]),
  ],
  targets: [
    .binaryTarget(
      name: "CelloSDK",
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.5.0/CelloSDK.xcframework.zip",
      checksum: "fc8bcd8ad84a88f11349dcfad105a76d5071b6f72691b1b25c8e81265d33c53a")
  ]
)
