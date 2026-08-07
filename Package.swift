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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.14.0/CelloSDK.xcframework.zip",
      checksum: "7a4a27985f132e59ce9237fc49c54ae648a237aae9594df5fbd1329dfe2732fb")
  ]
)
