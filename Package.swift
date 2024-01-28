// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "microfeature",
    platforms: [.macOS(.v11)],
    products: [
        .executable(
            name: "tuist-microfeature",
            targets: ["MicrofeatureCLI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
        .package(url: "https://github.com/tuist/projectdescription", from: "3.34.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.3"),
    ],
    targets: [
        .executableTarget(
            name: "MicrofeatureCLI",
            dependencies: [
                "MicrofeatureCLICore",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .target(name: "MicrofeatureCLICore"),
        .target(
            name: "Microfeature",
            dependencies: [
                .product(name: "ProjectDescription", package: "ProjectDescription"),
            ],
            path: "ProjectDescriptionHelpers"
        ),
        .testTarget(
            name: "MicrofeatureTests",
            dependencies: [
                "Microfeature"
            ],
            path: "Tests"
        ),
    ]
)
