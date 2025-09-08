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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.9.0/CelloSDK.xcframework.zip",
      checksum: "f6f02c78faca2c8e4b4eb2f286187d0454c78b7afdfd7c3860b136d376bf4a4b")
  ]
)
