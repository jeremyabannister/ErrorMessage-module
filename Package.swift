// swift-tools-version: 5.7

///
import PackageDescription

///
let package = Package(
    name: "ErrorMessage-module",
    products: [
        .library(
            name: "ErrorMessage-module",
            targets: ["ErrorMessage-module"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/XCTestToolkit",
            "0.1.5" ..< "0.2.0"
        ),
    ],
    targets: [
        .target(
            name: "ErrorMessage-module",
            dependencies: []
        ),
        .target(
            name: "ErrorMessageTestToolkit",
            dependencies: [
                "ErrorMessage-module",
                "XCTestToolkit",
            ]
        ),
        .testTarget(
            name: "ErrorMessage-tests",
            dependencies: [
                "ErrorMessageTestToolkit",
            ]
        ),
        .testTarget(
            name: "ErrorMessageTestToolkit-tests",
            dependencies: [
                "ErrorMessageTestToolkit",
            ]
        ),
    ]
)
