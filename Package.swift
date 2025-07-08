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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.7.1/CelloSDK.xcframework.zip",
      checksum: "4304303db5fc88a33aa039c4644785604b2bc587d80fe500addaf5daafeda33e")
  ]
)
