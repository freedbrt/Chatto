// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Chatto",
    platforms: [.iOS("13.0")],
    products: [
        .library(name: "Chatto", targets: ["Chatto"]),
        .library(name: "ChattoAdditions", targets: ["ChattoAdditions"]),
    ],
    targets: [
        .target(
            name: "Chatto",
            path: "Chatto/Source"
        ),
        .target(
            name: "ChattoAdditions",
            dependencies: ["Chatto"],
            path: "ChattoAdditions/Source",
            exclude: ["UI Components/CircleProgressIndicatorView"]
        )
    ]
)
