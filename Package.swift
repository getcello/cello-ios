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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.6.0/CelloSDK.xcframework.zip",
      checksum: "b0cc6db9708a772527d8ca982bf01498faf21e4cef13bc7b8d202e9b421558f0")
  ]
)
