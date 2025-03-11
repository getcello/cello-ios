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
      url: "https://github.com/getcello/cello-ios-sp/releases/download/0.6.1/CelloSDK.xcframework.zip",
      checksum: "803dd7841b6fe7723948c2b3621032a7b817edf967c4359689964c3d12375ba8")
  ]
)
