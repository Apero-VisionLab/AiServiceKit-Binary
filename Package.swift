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
            url: "https://github.com/Apero-VisionLab/AiServiceKit-Binary/releases/download/4.2.0/AiServiceKit.xcframework.zip",
            checksum: "0289584b539bf0de86c7d32bab00e4a7e6e290eac0679cabf3896d6698b83017"
        )
    ]
)
