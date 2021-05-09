//
//  Assertion.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

public struct Assertion<Type> {
    private let assertion: (_ instance: Type, _ file: StaticString, _ line: UInt) -> ()
    
    public init(assertion: @escaping (_ instance: Type, _ file: StaticString, _ line: UInt) -> ()) {
        self.assertion = assertion
    }
    
    public func assert(on instance: Type, _ file: StaticString, _ line: UInt) {
        self.assertion(instance, file, line)
    }
    
    public static var empty: Assertion<Type> { return Assertion(assertion: { _, _, _ in }) }
    
    public func combined(with other: Assertion<Type>) -> Assertion<Type> {
        return Assertion { instance, file, line in
            self.assertion(instance, file, line)
            other.assertion(instance, file, line)
        }
    }
}
