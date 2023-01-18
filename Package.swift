// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChainableLayoutLib",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ChainableLayout",
            targets: ["ChainableLayoutLib"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ChainableLayoutLib",
            dependencies: [],
            path: "ChainableLayout"
        )
    ]
)
