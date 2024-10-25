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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.2.3/CelloSDK.xcframework.zip",
      checksum: "c447b23edb596af78a0f04ea6bcf914bd17a4099707d5d5f828dce23da3a293d")
  ]
)
