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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.11.0/CelloSDK.xcframework.zip",
      checksum: "68e0dd97bfaeb43709dcafef1aec7c74def8eec32f7ae0a24a453aea32b2cb4b")
  ]
)
