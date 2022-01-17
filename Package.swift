// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyAuthing",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "SwiftyAuthing",
            targets: ["SwiftyAuthing"]),
    ],
    dependencies: [
        .package(url: "https://gitee.com/aloveric/Apollo.git", from: "0.36.0"),
        .package(url: "https://gitee.com/aloveric/Alamofire.git", from: "5.3.0"),
    ],
    targets: [
        .target(
            name: "SwiftyAuthing",
            path: "SwiftyAuthing",
            dependencies: ["Apollo","Alamofire",]),
        .testTarget(
            name: "SwiftyAuthingTests",
            dependencies: ["SwiftyAuthing"]),
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
