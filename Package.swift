// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SearchBar",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v11), .iOS(.v14), .visionOS(.v1), .tvOS(.v15), .watchOS(.v10)
    ],
    products: [
        .library(name: "SearchBar", targets: ["SearchBar"]),
        .library(name: "SearchBarHarness", targets: ["SearchBarHarness"])
    ],
    dependencies: [
        .package(url: "https://github.com/SzpakKamil/HarnessKit.git", branch: "1.0")
    ],
    targets: [
        .target(
            name: "SearchBar",
            resources: [
                .process("Resources/Localizable.xcstrings")
            ]
        ),
        .target(
            name: "SearchBarHarness",
            dependencies: [
                .product(name: "HarnessKit", package: "HarnessKit"),
                "SearchBar"
            ]
        ),
        .testTarget(
            name: "SearchBarTests",
            dependencies: ["SearchBar"]
        ),
    ]
)
