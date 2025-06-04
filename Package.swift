// swift-tools-version: 5.9
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
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(name: "SearchBar"),
    ]
)
