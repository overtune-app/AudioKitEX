// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AudioKitEX",
    platforms: [.macOS(.v10_13), .iOS(.v11), .tvOS(.v11)],
    products: [.library(name: "AudioKitEX", targets: ["AudioKitEX"])],
    dependencies: [.package(url: "https://github.com/overtune-app/AudioKit", .revision("77243f19117400dd4927b5ff1ee3b21a1d5ed11f"))],
    targets: [
        .target(name: "AudioKitEX", dependencies: ["AudioKit", "CAudioKitEX"]),
        .target(name: "CAudioKitEX", cxxSettings: [.headerSearchPath(".")]),
        .testTarget(name: "AudioKitEXTests", dependencies: ["AudioKitEX"], resources: [.copy("TestResources/")])
    ],
    cxxLanguageStandard: .cxx14
)

