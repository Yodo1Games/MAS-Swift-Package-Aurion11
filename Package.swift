// swift-tools-version: 5.6
// Copyright © 2026 Yodo1 Games. All rights reserved.

import PackageDescription

let package = Package(
    name: "Yodo1MasMediationAurion11",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Yodo1MasMediationAurion11", targets: ["Yodo1MasMediationAurion11Target"]),
        .library(name: "Yodo1MasMediationAurion11-A11Mediation", targets: ["Yodo1MasMediationAurion11-A11MediationTarget"]),
        .library(name: "Yodo1MasMediationAurion11-A11MediationRenderer", targets: ["Yodo1MasMediationAurion11-A11MediationRendererTarget"]),
        .library(name: "Yodo1MasMediationAurion11-OMSDK_Aurion11", targets: ["Yodo1MasMediationAurion11-OMSDK_Aurion11Target"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Core.git", exact: "5.0.0-beta.5"),
    ],
    targets: [
        // ==================== Yodo1MasMediationAurion11 ====================
        .target(
            name: "Yodo1MasMediationAurion11Target",
            dependencies: [
                .target(name: "Yodo1MasMediationAurion11"),
                .product(name: "Yodo1MasCore", package: "MAS-Swift-Package-Core"),
                .target(name: "A11Mediation"),
                .target(name: "A11MediationRenderer"),
                .target(name: "OMSDK_Aurion11"),
            ],
            path: "Sources/Yodo1MasMediationAurion11Target",
            resources: [.copy("Yodo1MasAurion11.plist")]
        ),
        .binaryTarget(
            name: "Yodo1MasMediationAurion11",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationAurion11/Yodo1MasMediationAurion11-5.0.0-beta.5.zip",
            checksum: "00d4cc6308d5b92605594cbbfed142acd82313cb842e1a833a993eff552e9188"
        ),
        .binaryTarget(
            name: "A11Mediation",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationAurion11/A11Mediation-5.0.0-beta.5.zip",
            checksum: "d065343ddb7b7d6cfb71e15625321f7f043b74b812ea1f5b982066908eed7604"
        ),
        .binaryTarget(
            name: "A11MediationRenderer",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationAurion11/A11MediationRenderer-5.0.0-beta.5.zip",
            checksum: "5d086d38718eec625518be8e68fbb52c7a1611baf494b72824b3acc2ba8e15b9"
        ),
        .binaryTarget(
            name: "OMSDK_Aurion11",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationAurion11/OMSDK_Aurion11-5.0.0-beta.5.zip",
            checksum: "45e8f46f062a3556539ad8156c60d07485df98a1b572dd5f0b642b6a627f4598"
        ),
        // ==================== Yodo1MasMediationAurion11-A11Mediation (binary) ====================
        .target(
            name: "Yodo1MasMediationAurion11-A11MediationTarget",
            dependencies: [
                .target(name: "A11Mediation"),
            ],
            path: "Sources/Yodo1MasMediationAurion11-A11MediationTarget"
        ),
        // ==================== Yodo1MasMediationAurion11-A11MediationRenderer (binary) ====================
        .target(
            name: "Yodo1MasMediationAurion11-A11MediationRendererTarget",
            dependencies: [
                .target(name: "A11MediationRenderer"),
            ],
            path: "Sources/Yodo1MasMediationAurion11-A11MediationRendererTarget"
        ),
        // ==================== Yodo1MasMediationAurion11-OMSDK_Aurion11 (binary) ====================
        .target(
            name: "Yodo1MasMediationAurion11-OMSDK_Aurion11Target",
            dependencies: [
                .target(name: "OMSDK_Aurion11"),
            ],
            path: "Sources/Yodo1MasMediationAurion11-OMSDK_Aurion11Target"
        ),
    ]
)
