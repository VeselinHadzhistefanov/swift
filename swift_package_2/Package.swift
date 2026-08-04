// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift_package_2",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "swift_package_2"
        ),
        .testTarget(
            name: "swift_package_2Tests",
            dependencies: ["swift_package_2"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
