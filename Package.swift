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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.3.1/CelloSDK.xcframework.zip",
      checksum: "6c98a3175a79ad0a27e80c0904fbcf6bed55b2dd019d1bc6936aeec881995f84")
  ]
)
