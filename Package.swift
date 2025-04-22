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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.7.0/CelloSDK.xcframework.zip",
      checksum: "21f1a90b54f55331245cc7bf8b61278fb99cfbad7fb8f32b403271f50a83016d")
  ]
)
