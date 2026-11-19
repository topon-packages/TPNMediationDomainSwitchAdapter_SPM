// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationDomainSwitchAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationDomainSwitchAdapter",
            targets: ["TPNMediationDomainSwitchAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkDomainSwitchAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkDomainSwitchAdapter/10.0.0/AnyThinkDomainSwitchAdapter-10.0.0.zip",
            checksum: "33bd61d08239395e1f2819a0a70fc11c9c393f15d33b78ad6af6c10161cb7744"
        ),
        .target(
            name: "TPNMediationDomainSwitchAdapterTarget",
            dependencies: [
                "AnyThinkDomainSwitchAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM")
            ],
            path: "Sources/TPNMediationDomainSwitchAdapterTarget"
        )
    ]
)