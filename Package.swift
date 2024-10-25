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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.2.2/CelloSDK.xcframework.zip",
      checksum: "7d8eb93ffc3f60b9de31403fced8f7ba724995e43d7e91f836d2dd90c5383e54")
  ]
)
