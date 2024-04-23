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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.1.0/CelloSDK.xcframework.zip",
      checksum: "80799c00b8dfde5546cb8233d50cb0c2f877ecfc2ffff5bb0d8637f1af04ad13")
  ]
)
