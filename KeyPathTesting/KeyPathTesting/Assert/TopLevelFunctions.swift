//
//  TopLevelFunctions.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

public func assert<Type>(on instance: Type,
                         @AssertionBuilder<Type> assertions: () -> [Assertion<Type>]) {
    assertions().forEach { $0.assert(on: instance) }
}
