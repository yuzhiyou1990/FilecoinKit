// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FilecoinKit",
    platforms: [
        .iOS("10.0")
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FilecoinKit",
            targets: ["FilecoinKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift",from: "1.4.2"),
        .package(url: "https://github.com/mathwallet/Secp256k1Swift",from: "2.0.0"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", .upToNextMajor(from: "8.1.1")),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.9.1"),
        .package(name: "Blake2", url: "https://github.com/lishuailibertine/Blake2.swift", from: "0.1.3"),
        .package(url: "https://github.com/attaswift/BigInt", from: "5.3.0"),
        .package(name:"CBORSwift", url: "https://github.com/lishuailibertine/CBORSWift",from: "0.0.1"),
        .package(name:"Base32Swift", url: "https://github.com/lishuailibertine/Base32Swift", from: "0.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FilecoinKit",
            dependencies: ["CryptoSwift","Secp256k1Swift",.product(name: "BIP32Swift", package: "Secp256k1Swift"),"PromiseKit","Alamofire","Base32Swift","Blake2","BigInt","CBORSwift"]),
        .testTarget(
            name: "FilecoinKitTests",
            dependencies: ["FilecoinKit"]),
    ]
)
