# MenuBuilder

DSL for building `UIMenu` in a simple way.

Supports: 
- [x] hierarhical menu
- [x] if/else conditions
- [] loops

Example:
```
UIMenu {
    UIAction("Open") { ... }
    UIMenu("Edit") {
        UIAction("Duplicate", icon: "doc.on.doc") { ... }
        UIAction("Delete", icon: "xmark.bin") { ... }
    }
}
```
