// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "ICTMDBHomeModule",
    platforms: [
        .iOS(.v18) // Project.swift dosyanızdaki hedef
    ],
    products: [
        .library(
            name: "ICTMDBHomeModule",
            targets: ["ICTMDBHomeModule"]
        ),
    ],
    dependencies: [
        // Buradaki URL'leri gerçek repo adresleriyle güncellemelisiniz
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/engingulek/GenericCollectionViewKit.git", from: "1.0.0"),
        .package(url: "https://github.com/engingulek/ICTMDBModularProtocols.git", from: "1.0.0"),
        .package(url: "https://github.com/engingulek/ICTMDBNetworkManagerKit.git", from: "1.0.0"),
        .package(url: "https://github.com/engingulek/ICTMDBViewKit.git", from: "1.0.0"),
        .package(url: "https://github.com/engingulek/DependencyKit.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "ICTMDBHomeModule",
            dependencies: [
                "SnapKit",
                "GenericCollectionViewKit",
                "ICTMDBModularProtocols",
                "ICTMDBNetworkManagerKit",
                "ICTMDBViewKit",
                "DependencyKit"
            ],
            path: "ICTMDBHomeModule/Sources",
            resources: [
                .process("Resources") // Resources klasörünü SPM'e tanıtır
            ]
        ),
        .testTarget(
            name: "ICTMDBHomeModuleTests",
            dependencies: [
                "ICTMDBHomeModule",
                "GenericCollectionViewKit",
                "ICTMDBViewKit"
            ],
            path: "ICTMDBHomeModule/Tests"
        ),
    ]
)