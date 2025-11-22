// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Featurefest",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "Featurefest",
            targets: ["Featurefest"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Featurefest",
            dependencies: [])
    ]
)