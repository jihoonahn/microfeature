// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "microfeature",
    platforms: [.macOS(.v11)],
    products: [
        .executable(
            name: "tuist-microfeature",
            targets: ["MicroFeatureCLI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
        .package(url: "https://github.com/tuist/projectdescription", from: "3.28.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.3"),
        .package(url: "https://github.com/pelagornis/plcommand", from: "1.2.2")
    ],
    targets: [
        .executableTarget(
            name: "MicroFeatureCLI",
            dependencies: [
                "MicroFeatureCLICore",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .target(
            name: "MicroFeatureCLICore",
            dependencies: [
                .product(name: "Command", package: "plcommand")
            ]
        ),
        .target(
            name: "MicroFeature",
            dependencies: [
                .product(name: "ProjectDescription", package: "ProjectDescription"),
            ],
            path: "ProjectDescriptionHelpers"
        ),
        .testTarget(
            name: "MicroFeatureTests",
            dependencies: [
                "MicroFeature"
            ],
            path: "Tests"
        ),
    ]
)
