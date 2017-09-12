// swift-tools-version:4.0

import Foundation
import PackageDescription

let package = Package(
  name: "PathKit",
  products: [
    .library(name: "PathKit", targets: ["PathKit"])
  ],
  dependencies: [
    // https://github.com/apple/swift-package-manager/pull/597
    .package(url: "https://github.com/Sense-Medical/Spectre.git", .branch("cortex")),
  ],
  targets: [
    .target(name: "PathKit", path: "Sources"),
    .testTarget(name: "PathKitTests", dependencies: ["Spectre", "PathKit"], path: "Tests")
  ]
)
