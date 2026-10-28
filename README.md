# tree-sitter-graphql-spm

Swift Package Manager wrapper for the [tree-sitter-graphql](https://github.com/bkegley/tree-sitter-graphql) grammar, with highlight and injection queries.

## Usage

```swift
dependencies: [
    .package(url: "https://github.com/burin-labs/tree-sitter-graphql-spm.git", from: "0.1.0")
]
```

Then add `TreeSitterGraphQL` as a dependency of your target.

## License

The parser is MIT (see `LICENSE`, from upstream). The queries in `Sources/TreeSitterGraphQL/queries/` are Apache-2.0 from nvim-treesitter (see `Sources/TreeSitterGraphQL/queries/LICENSE`).
