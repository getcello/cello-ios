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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.8.0/CelloSDK.xcframework.zip",
      checksum: "facd4a7c805e42a6d5ac33fa2b9c1898545d40999e056f3ce9dc681433253e0c")
  ]
)
