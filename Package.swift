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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.12.0/CelloSDK.xcframework.zip",
      checksum: "6bf292ad1666b11ece5462fd7858204b6f24303cc80c5d1aeaa5f634c192fce1")
  ]
)
