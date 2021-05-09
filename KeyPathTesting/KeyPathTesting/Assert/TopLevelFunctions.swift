//
//  TopLevelFunctions.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

public func assert<Type>(on instance: Type,
                         _ file: StaticString = #file,
                         _ line: UInt = #line,
                         @AssertionBuilder<Type> assertions: () -> Assertion<Type>) {
    assertions().assert(on: instance, file, line)
}
