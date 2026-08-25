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
            url: "https://github.com/Apero-VisionLab/AiServiceKit-Binary/releases/download/3.1.0/AiServiceKit.xcframework.zip",
            checksum: "f027e36a6c29b20b6d7b4c19e3351bf7468ba7981725a61b334d5e722fd9d2d2"
        )
    ]
)
