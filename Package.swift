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
            url: "https://github.com/Apero-VisionLab/AiServiceKit-Binary/releases/download/5.3.5/AiServiceKit.xcframework.zip",
            checksum: "1890d3b346f4aee8ff9e668fe3e7d66c75eb6ac5d7e1374b1d4e9bdfb8f2cdd3"
        )
    ]
)
