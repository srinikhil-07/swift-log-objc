// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-log-ObjC",
     platforms: [.macOS(.v10_10), .iOS(.v10), .tvOS(.v10), .watchOS(.v3)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "swift-log-ObjC",
            type: .static,
            targets: ["swift-log-ObjC"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "swift-log-ObjC",
            dependencies: []),
        .testTarget(
            name: "swift-log-ObjCTests",
            dependencies: ["swift-log-ObjC"]),
    ]
)
