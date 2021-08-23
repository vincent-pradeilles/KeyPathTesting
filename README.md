# KeyPathTesting

![platforms](https://img.shields.io/badge/platforms-iOS-333333.svg)
![pod](https://img.shields.io/cocoapods/v/KeyPathTesting.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

## Context

KeyPathTesting is a Swift framework that leverages Result Builders to implement a new syntax that allows developers to write KeyPath-based unit tests.

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

## How does it work?

I've made a video to explain in details the internal implementation of `KeyPathTesting` 👇

[![](https://img.youtube.com/vi/58IChtjCPGM/0.jpg)](https://www.youtube.com/watch?v=58IChtjCPGM)

## Requirements

Xcode 12.5 & Swift 5.4

## Installation

### CocoaPods

Add the following to your `Podfile`:

`pod "KeyPathTesting"`

### Carthage

Add the following to your `Cartfile`:

`github "vincent-pradeilles/KeyPathTesting"`

## Author

* Twitter: [@v_pradeilles](https://twitter.com/v_pradeilles)
