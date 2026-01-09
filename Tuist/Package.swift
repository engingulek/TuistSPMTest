// swift-tools-version: 5.9
import PackageDescription

#if HI_TUIST
import ProjectDescription

let packageSettings = PackageSettings(
    productTypes: [
        "SnapKit": .framework, // Statik mi dinamik mi olacağını seçebilirsiniz
        "GenericCollectionViewKit": .framework,
        "ICTMDBModularProtocols": .framework,
        "ICTMDBNetworkManagerKit": .framework,
        "ICTMDBViewKit": .framework,
        "DependencyKit": .framework
    ]
)
#endif

let package = Package(
    name: "ExternalDependencies",
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        .package(url: "https://github.com/engingulek/GenericCollectionViewKit", from: "0.0.4"),
        .package(url: "https://github.com/engingulek/ICTMDBModularProtocols", from: "0.0.1"),
        .package(url: "https://github.com/engingulek/ICTMDBNetworkManagerKit", from: "0.0.5"),
        .package(url: "https://github.com/engingulek/ICTMDBViewKit", from: "0.0.7"),
        .package(url: "https://github.com/engingulek/HPDependencyKit", from: "1.0.0"),
        .package(url: "https://github.com/realm/SwiftLint", from: "0.54.0")
    ]
)
