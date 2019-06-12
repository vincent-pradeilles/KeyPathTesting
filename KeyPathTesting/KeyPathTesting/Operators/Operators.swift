//
//  Operators.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import XCTest

public func == <Type, Value: Equatable>(property: KeyPath<Type, Value>, constant: Value) -> Assert<Type> {
    return Assert(assertor: { instance in
        XCTAssertEqual(instance[keyPath: property], constant)
    })
}

public func != <Type, Value: Equatable>(property: KeyPath<Type, Value>, constant: Value) -> Assert<Type> {
    return Assert(assertor: { instance in
        XCTAssertNotEqual(instance[keyPath: property], constant)
    })
}

public func < <Type, Value: Comparable>(property: KeyPath<Type, Value>, constant: Value) -> Assert<Type> {
    return Assert(assertor: { instance in
        XCTAssertLessThan(instance[keyPath: property], constant)
    })
}

public func <= <Type, Value: Comparable>(property: KeyPath<Type, Value>, constant: Value) -> Assert<Type> {
    return Assert(assertor: { instance in
        XCTAssertLessThanOrEqual(instance[keyPath: property], constant)
    })
}

public func > <Type, Value: Comparable>(property: KeyPath<Type, Value>, constant: Value) -> Assert<Type> {
    return Assert(assertor: { instance in
        XCTAssertGreaterThan(instance[keyPath: property], constant)
    })
}

public func >= <Type, Value: Comparable>(property: KeyPath<Type, Value>, constant: Value) -> Assert<Type> {
    return Assert(assertor: { instance in
        XCTAssertGreaterThanOrEqual(instance[keyPath: property], constant)
    })
}
