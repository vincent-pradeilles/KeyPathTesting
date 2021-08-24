//
//  Operators.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import XCTest

public func == <Type, Value: Equatable>(property: KeyPath<Type, Value>, constant: Value) -> RawAssertion<Type> {
    return { instance, file, line in
        XCTAssertEqual(instance[keyPath: property], constant, file: file, line: line)
    }
}

public func != <Type, Value: Equatable>(property: KeyPath<Type, Value>, constant: Value) -> RawAssertion<Type> {
    return { instance, file, line in
        XCTAssertNotEqual(instance[keyPath: property], constant, file: file, line: line)
    }
}

public func ~= <Type, Value> (_ pattern: ClosedRange<Value>, _ property: KeyPath<Type, Value>) -> RawAssertion<Type> {
    return { instance, file, line in
        XCTAssert(pattern ~= instance[keyPath: property], file: file, line: line)
    }
}

public func < <Type, Value: Comparable>(property: KeyPath<Type, Value>, constant: Value) -> RawAssertion<Type> {
    return { instance, file, line in
        XCTAssertLessThan(instance[keyPath: property], constant, file: file, line: line)
    }
}

public func <= <Type, Value: Comparable>(property: KeyPath<Type, Value>, constant: Value) -> RawAssertion<Type> {
    return { instance, file, line in
        XCTAssertLessThanOrEqual(instance[keyPath: property], constant, file: file, line: line)
    }
}

public func > <Type, Value: Comparable>(property: KeyPath<Type, Value>, constant: Value) -> RawAssertion<Type> {
    return { instance, file, line in
        XCTAssertGreaterThan(instance[keyPath: property], constant, file: file, line: line)
    }
}

public func >= <Type, Value: Comparable>(property: KeyPath<Type, Value>, constant: Value) -> RawAssertion<Type> {
    return { instance, file, line in
        XCTAssertGreaterThanOrEqual(instance[keyPath: property], constant, file: file, line: line)
    }
}

public prefix func ! <Type>(property: KeyPath<Type, Bool>) -> RawAssertion<Type> {
    return { instance, file, line in
        XCTAssertFalse(instance[keyPath: property], file: file, line: line)
    }
}
