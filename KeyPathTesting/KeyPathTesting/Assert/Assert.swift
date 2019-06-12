//
//  Assert.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

public struct Assert<Type> {
    public let assertor: (Type) -> ()
    
    public init(assertor: @escaping (Type) -> ()) {
        self.assertor = assertor
    }
    
    public static var empty: Assert<Type> { return Assert(assertor: { _ in }) }
    
    public func combined(with other: Assert<Type>) -> Assert<Type> {
        return Assert { instance in
            self.assertor(instance)
            other.assertor(instance)
        }
    }
}
