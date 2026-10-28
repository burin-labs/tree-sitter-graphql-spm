# Upstream provenance

This repo is a Swift Package Manager wrapper around an upstream tree-sitter
grammar. We vendor its generated `parser.c` (and any scanner) under
`Sources/TreeSitterGraphQL/src/` so SwiftPM can build it without `tree-sitter-cli`.

## Parser

| Field | Value |
| --- | --- |
| Repo | https://github.com/bkegley/tree-sitter-graphql |
| License | MIT |
| Last reviewed commit | `5e66e961eee421786bdda8495ed1db045e06b5fe` |
| Provenance | byte-identical to upstream at that commit on 2026-10-28 |

## Queries

`Sources/TreeSitterGraphQL/queries/` holds `highlights.scm` and `injections.scm` from
[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
`runtime/queries/graphql/` at commit `a2f694478be07f89c2d03cc17858a8745a400c4b` (Apache-2.0, license copied
beside them). The upstream grammar does not maintain its own highlight
queries; nvim-treesitter pins this same parser commit for its graphql queries,
so every node the queries name exists in the vendored parser.

## How to re-vendor

Copy `src/parser.c`, any `src/scanner.c` and `src/tree_sitter/*.h` from the
upstream commit nvim-treesitter's `lua/nvim-treesitter/parsers.lua` pins for
graphql, then copy the queries from that nvim-treesitter commit. Update both
SHAs above. A multi-hundred-KB `parser.c` is the supply chain: review it.
