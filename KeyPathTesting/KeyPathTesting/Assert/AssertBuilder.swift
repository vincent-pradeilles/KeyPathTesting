//
//  AssertBuilder.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

@_functionBuilder
public class AssertBuilder {
    static func buildBlock<T>(_ children: Assert<T>...) -> Assert<T> {
        return children.reduce(.empty, { $0.combined(with: $1) })
    }
}
