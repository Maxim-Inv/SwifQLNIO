// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwifQLNIO",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "SwifQLNIO", targets: ["SwifQLNIO"]),
        ],
    dependencies: [
        .package(url: "https://github.com/MihaelIsaev/SwifQL.git", .exact("2.0.0-beta.1.6.0")),
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.16.0"),
        ],
    targets: [
        .target(name: "SwifQLNIO", dependencies: [
            .product(name: "NIO", package: "swift-nio"),
            .product(name: "SwifQL", package: "SwifQL")
        ]),
        .testTarget(name: "SwifQLNIOTests", dependencies: ["SwifQLNIO"]),
        ]
)
