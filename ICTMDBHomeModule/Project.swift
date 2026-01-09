import ProjectDescription

let project = Project(
    name: "ICTMDBHomeModule",
    targets: [
        .target(
            name: "ICTMDBHomeModule",
            destinations: .iOS,
            product: .framework,
            bundleId: "com.engingulek.ICTMDBHomeModule",
            deploymentTargets: .iOS("18.0"),
            infoPlist: .default,
            sources: ["ICTMDBHomeModule/Sources/**"],
            resources: ["ICTMDBHomeModule/Resources/**"],
            dependencies: [
                .external(name: "SnapKit"),
                .external(name: "GenericCollectionViewKit"),
                .external(name: "ICTMDBModularProtocols"),
                .external(name: "ICTMDBNetworkManagerKit"),
                .external(name: "ICTMDBViewKit"),
                .external(name: "DependencyKit")
            ]
        ),
        .target(
            name: "ICTMDBHomeModuleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.engingulek.ICTMDBHomeModuleTests",
            infoPlist: .default,
            sources: ["ICTMDBHomeModule/Tests/**"],
            resources: [],
            dependencies: [
                .target(name: "ICTMDBHomeModule"),
                .external(name: "GenericCollectionViewKit"),
                .external(name: "ICTMDBViewKit")
            ]
        ),
    ]
)
