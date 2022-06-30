// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftBowlingKata",
    products: [
        .library(name: "SwiftBowlingKata", targets: ["SwiftBowlingKata"])
    ],
    targets: [
        .target(name: "SwiftBowlingKata", dependencies: []),
        .testTarget(name: "SwiftBowlingKataTests", dependencies: ["SwiftBowlingKata"])
    ]
)
