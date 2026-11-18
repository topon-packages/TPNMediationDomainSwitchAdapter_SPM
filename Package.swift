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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkDomainSwitchAdapter/6.5.91/AnyThinkDomainSwitchAdapter-6.5.91.zip",
            checksum: "77f9154599deebdc88ff2428c8e649c33c1d750f990dd6cdaa270fda6b2d2915"
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