// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SearchBar",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v11), .iOS(.v14), .visionOS(.v1), .tvOS(.v14), .watchOS(.v10)
    ],
    products: [
        .library(name: "SearchBar", targets: ["SearchBar"])
    ],
    targets: [
        .target(
            name: "SearchBar",
            resources: [
                .process("Resources/Localizable.xcstrings")
            ]
        ),
        .testTarget(
            name: "SearchBarTests",
            dependencies: ["SearchBar"]
        ),
    ]
)
