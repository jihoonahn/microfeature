// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "microfeature",
    platforms: [.macOS(.v11)],
    products: [
        .executable(
            name: "micro-feature",
            targets: ["MicroFeatureCLI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
    ],
    targets: [
        .executableTarget(name: "MicroFeatureCLI"),
        .testTarget(
            name: "MicroFeatureTests",
            dependencies: ["MicroFeatureCLI"],
            path: "Tests"
        ),
    ]
)
