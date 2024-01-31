// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "ArculusCryptoSwift",
  platforms: [
    .macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v4)
  ],
  products: [
    .library(
      name: "ArculusCryptoSwift",
      targets: ["CryptoSwift"]
    )
  ],
  targets: [
    .target(name: "CryptoSwift", resources: [.copy("PrivacyInfo.xcprivacy")]),
    .testTarget(name: "CryptoSwiftTests", dependencies: ["ArculuCryptoSwift"]),
    .testTarget(name: "TestsPerformance", dependencies: ["ArculuCryptoSwift"])
  ],
  swiftLanguageVersions: [.v5]
)

#if swift(>=5.6)
  // Add the documentation compiler plugin if possible
  package.dependencies.append(
    .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
  )
#endif
