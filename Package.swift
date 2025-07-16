// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ReceiptScannerLite",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ReceiptScannerLite",
            targets: ["ReceiptScannerLite"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ReceiptScannerLite",
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/1.0-lite-version/ReceiptScannerLite.xcframework.zip",
            checksum: "10b8ef1d2b3b9c1d99770ed020e04b0aa230958b398e649afef2c38466e3e732"
        )
    ]
)
