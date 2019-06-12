//
//  Assert.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

public struct Assert<Type> {
    public let assertor: (_ instance: Type, _ file: StaticString, _ line: UInt) -> ()
    
    public init(assertor: @escaping (_ instance: Type, _ file: StaticString, _ line: UInt) -> ()) {
        self.assertor = assertor
    }
    
    public static var empty: Assert<Type> { return Assert(assertor: { _, _, _ in }) }
    
    public func combined(with other: Assert<Type>) -> Assert<Type> {
        return Assert { instance, file, line in
            self.assertor(instance, file, line)
            other.assertor(instance, file, line)
        }
    }
}
