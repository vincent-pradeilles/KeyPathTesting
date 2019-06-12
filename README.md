# KeyPathTesting

![platforms](https://img.shields.io/badge/platforms-iOS-333333.svg)
![pod](https://img.shields.io/cocoapods/v/KeyPathTesting.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Context

KeyPathTesting is a Swift framework that leverages Function Builders to implement a new syntax that allows developers to write KeyPath-based unit tests.

Here's an example of how it can be used:

```swift
class MyTests: XCTestCase {
    func test() {
        let myData = [1, 2, 3, 4]
        
        assert(on: myData) {
            \.isEmpty == false
            \.count > 2
            \.first == 1
            \.last != 1
        }
    }
}
```

## Requirements

Xcode 11+ & Swift 5.1

## Installation

### Carthage

Add the following to your `Cartfile`:

`github "vincent-pradeilles/KeyPathTesting"`
