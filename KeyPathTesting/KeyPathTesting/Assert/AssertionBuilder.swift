//
//  AssertionBuilder.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

@resultBuilder
public struct AssertionBuilder<T> {
    
    public static func buildExpression(_ expression: Assertion<T>) -> Assertion<T> {
        return expression
    }
    
    public static func buildBlock(_ children: Assertion<T>...) -> Assertion<T> {
        return children.reduce(.empty, { $0.combined(with: $1) })
    }
}
