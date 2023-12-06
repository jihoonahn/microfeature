# µFeatures Architecture

<p>
  <img src="https://img.shields.io/badge/Swift-5.9-f05318.svg" />
  <img src="https://img.shields.io/badge/tuist-plugin-blue.svg" />
  <img alt="GitHub" src="https://img.shields.io/github/license/jihoonahn/microfeature">
</p>

MicroFeature Architecture Plugin available in Tuist.

## Installation

In order to tell Tuist you'd like to use MicroFeature plugin in your project follow the instructions that are described in [Tuist documentation.](https://docs.tuist.io/plugins/using-plugins)

Add the plugin to `Config.swift`.
```swift
import ProjectDescription

let config = Config(
    plugins: [
        .git(url: "https://github.com/jihoonahn/microfeature.git", tag: "vTAG")
    ]
)
```

## Documentation
The documentation for releases and `main` are available here:
- [`main`](https://jihoonahn.github.io/microfeature/main/documentation/microfeature/)


## Using

Then import the `MicroFeature` from thr location you want to use.

```swift
import Microfeature
```

## Build µFeatures Architecture with Microfeature Plugin
This plugin refers to Tuist's [`µFeatures Architecture`](https://docs.tuist.io/building-at-scale/microfeatures).

### Code

```swift
Microfeature {
    Example(name: typeName)
    Interface(name: typeName)
    Sources(name: typeName)
    Testing(name: typeName)
    UnitTests(name: typeName)
    UITests(name: typeName)
}
```

This way, you can easily build a target.

---

When used the basic Tuist

```swift
let project = Project(
    name: "ExampleProject",
    targets: Microfeature {
        Example(name: "Example")
        Interface(name: "Example")
        Sources(name: "Example")
        Testing(name: "Example")
        UnitTests(name: "Example")
        UITests(name: "Example")
    }
)
```

If you use it with `TuistUI` Plugin

```swift
let project = ExampleModule().makeModule()

struct ExampleModule: Module {
    var body: some Module {
        Project {
            Microfeature {
                Example(name: typeName)
                Interface(name: typeName)
                Sources(name: typeName)
                Testing(name: typeName)
                UnitTests(name: typeName)
                UITests(name: typeName)
            }
        }
    }
}
```

You can create a more stylish module.

### Templates

```bash
$ tuist scaffold $(templateName) --path $(path) --name $(name)
```

<details>
  <summary> Template Name </summary>

- Example
- Interface
- Sources
- Testing
- Tests
- UITests
</details>

### Support later
- commandLine
  - Until now, it has been made so that only version can be checked, but we plan to add a template function in the future.


## License
**microfeature** is under MIT license. See the [LICENSE](https://github.com/Jihoonahn/microfeature/blob/main/LICENSE) file for more info.
