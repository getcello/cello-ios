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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.10.0/CelloSDK.xcframework.zip",
      checksum: "3d3f6f3afa2c8e54d3132c85a06362376281674c9a357e6a6e6dd7d0f211c123")
  ]
)
