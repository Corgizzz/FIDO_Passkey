// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let platforms: [SupportedPlatform] = [.iOS(.v13)]

let package = Package(
    name: "FIDO_Passkey",
    platforms: platforms,
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FIDO_Passkey",
            targets: ["FIDO_Passkey"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FIDO_Passkey",
            dependencies: [],
            path: "Sources/PasskeysManger"
        ),
        .testTarget(
            name: "FIDO_PasskeyTests",
            dependencies: ["FIDO_Passkey"]),
    ]
)
