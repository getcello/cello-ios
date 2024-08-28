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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.1.1/CelloSDK.xcframework.zip",
      checksum: "b86935c6c683046d6fe2993e4e860c1e178bb97f859e82ecd9a7672cae94e5e4")
  ]
)
