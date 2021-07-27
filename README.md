# MenuBuilder

DSL for building `UIMenu` in a simple way.

Supports: 
- hierarhical menu
- if/else conditions

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
