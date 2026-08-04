// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "p_1",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "p_1"
        ),
        .testTarget(
            name: "p_1Tests",
            dependencies: ["p_1"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
