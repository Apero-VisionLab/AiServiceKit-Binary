// swift-tools-version: 6.0
import PackageDescription

// Repo phân phối BINARY của AiServiceKit qua SPM.
// File này được sinh tự động bởi scripts/publish-github-spm.sh trong repo source
// mỗi lần release — url + checksum trỏ tới GitHub Release asset của đúng version.
let package = Package(
    name: "AiServiceKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v11)
    ],
    products: [
        .library(name: "AiServiceKit", targets: ["AiServiceKit"])
    ],
    targets: [
        .binaryTarget(
            name: "AiServiceKit",
            url: "https://github.com/AperoVN/AiServiceKit-Binary/releases/download/2.5.8/AiServiceKit.xcframework.zip",
            checksum: "e2c1a8958c9ba13750f48e3737b5132085cfaa6b41c377c5ac19cead7067e4c8"
        )
    ]
)
