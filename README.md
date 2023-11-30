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

## Using

Then import the `MicroFeature` from thr location you want to use.

```swift
import MicroFeature
```
