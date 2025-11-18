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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.11.1/CelloSDK.xcframework.zip",
      checksum: "6c9bc80b3b2fe22a128efd10066badc2ae6c98fc2842a0594cda4378826f63a3")
  ]
)
