// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SearchBar",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v11), .iOS(.v14), .visionOS(.v1)
    ],
    products: [
        .library(name: "SearchBar", targets: ["SearchBar"])
    ],
    targets: [
        .target(name: "SearchBar"),
    ]
)
