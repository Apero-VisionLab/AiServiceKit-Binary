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
            url: "https://github.com/Apero-VisionLab/AiServiceKit-Binary/releases/download/3.3.4/AiServiceKit.xcframework.zip",
            checksum: "891b3e601ffe6da12b180800e906254df9535e7f039d146dec35cb8648e60597"
        )
    ]
)
