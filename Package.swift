// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyAuthing",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftyAuthing",
            targets: ["SwiftyAuthing"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apollographql/apollo-ios.git", from: "0.36.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.3.0"),
        .package(url: "https://github.com/Woo-Interactive/SwiftyRSA.git", from: "1.7.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftyAuthing",
            dependencies: []),
        .testTarget(
            name: "SwiftyAuthingTests",
            dependencies: ["SwiftyAuthing"]),
    ]
)
