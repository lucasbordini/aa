// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "ReadyRemitSDKPackage",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "ReadyRemitSDK",
            targets: [
                "ReadyRemitSDK", 
                "VisaSensoryBranding"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.7.1"),
        .package(url: "https://github.com/Swinject/SwinjectAutoRegistration.git", from: "2.8.0"),
        .package(url: "https://github.com/mixpanel/mixpanel-swift.git", from: "2.9.9"),
        .package(url: "https://github.com/launchdarkly/ios-client-sdk.git", from: "5.4.0"),
    ],
    targets: [
        .binaryTarget(
            name: "VisaSensoryBranding",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/v6.0/VisaSensoryBranding.xcframework.zip",
            checksum: "03ff1cbb5d50dc3d68521506628549d15c26744ecfbf5565d647716bb6118c80",
        )
        .binaryTarget(
            name: "ReadyRemitSDK",
            url: "https://github.com/BrightwellPayments/readyremit-sdk-ios/releases/download/v6.0/ReadyRemitSDK.zip",
            checksum: "1fc5657c2708d9a1fce717fbd5ddb79a6a396aa02f65f04be51af0fe91727c02"
        ),
    ],
    swiftLanguageVersions: [.v5]
)