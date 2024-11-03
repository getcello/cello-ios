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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.3.0/CelloSDK.xcframework.zip",
      checksum: "052b8a57235ccf8b7bd1498837c3fcc0adfea6738b036ad27a567e114df0fe72")
  ]
)
