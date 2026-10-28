// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "TreeSitterGraphQL",
    products: [.library(name: "TreeSitterGraphQL", targets: ["TreeSitterGraphQL"])],
    targets: [
        .target(
            name: "TreeSitterGraphQL",
            path: "Sources/TreeSitterGraphQL",
            sources: ["src/parser.c"],
            resources: [.copy("queries")],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("src")]
        )
    ]
)
