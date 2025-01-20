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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.4.0/CelloSDK.xcframework.zip",
      checksum: "28eea218e53c92c13a84bb20e87460575765c7d6bc86029a1618ee095e301dac")
  ]
)
