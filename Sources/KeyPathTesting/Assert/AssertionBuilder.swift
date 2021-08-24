//
//  AssertionBuilder.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

@resultBuilder
public struct AssertionBuilder<Type> {
    
    public static func buildExpression(
        _ expression: @escaping RawAssertion<Type>,
        _ file: StaticString = #file,
        _ line: UInt = #line) -> Assertion<Type>
    {
        Assertion(assertion: expression, file: file, line: line)
    }
    
    public static func buildBlock(_ children: Assertion<Type>...) -> [Assertion<Type>] {
        children
    }
    
}
