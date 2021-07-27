# MenuBuilder

[![Unit Test](https://github.com/achernoprudov/MenuBuilder/actions/workflows/unit-test.yml/badge.svg?branch=master)](https://github.com/achernoprudov/MenuBuilder/actions/workflows/unit-test.yml)

DSL for building `UIMenu` in a simple way.

Supports: 
- [x] hierarhical menu
- [x] if/else conditions
- [ ] loops

### Example:
```
UIMenu {
    UIAction("Open") { ... }
    UIMenu("Edit") {
        UIAction("Duplicate", icon: "doc.on.doc") { ... }
        UIAction("Delete", icon: "xmark.bin") { ... }
    }
}
```

## Install

### Swift Package Manager

The Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

Once you have your Swift package set up, adding SwiftDI as a dependency is as easy as adding it to the dependencies value of your Package.swift:

Swift 5
```
dependencies: [
    .package(url: "https://github.com/achernoprudov/MenuBuilder.git", from: "1.0.0")
]
```
