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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.13.0/CelloSDK.xcframework.zip",
      checksum: "ad7e1fef0bfc16f863cf05174ec3b11527b9e0b225fbbc8c97a6523573bdb877")
  ]
)
