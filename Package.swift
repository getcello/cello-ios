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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.4.1/CelloSDK.xcframework.zip",
      checksum: "bdd18c531466e1ec34be3a365440d6860b7578140ddf1c5af6df0d942e2012a2")
  ]
)
