// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "URLBuilder",
    products: [
        .library(
            name: "URLBuilder",
            targets: ["URLBuilder"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "URLBuilder",
            dependencies: []),
        .testTarget(
            name: "URLBuilderTests",
            dependencies: ["URLBuilder"]),
    ]
)
