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
            url: "https://sdk-library.s3.eu-central-1.amazonaws.com/iOS/1.10-lite-version/ReceiptScannerLite.xcframework.zip",
            checksum: "a24d0211b7ad4798e4548be96b7ef84c7efd55bba228300a3b0fdef34393b4b0"
        )
    ]
)
