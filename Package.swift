// swift-tools-version:5.4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MenuBuilder",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "MenuBuilder",
            targets: ["MenuBuilder"]),
    ],
    targets: [
        .target(
            name: "MenuBuilder",
            dependencies: []),
        .testTarget(
            name: "MenuBuilderTests",
            dependencies: ["MenuBuilder"]),
    ]
)
