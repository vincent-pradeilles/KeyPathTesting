//
//  AssertTests.swift
//  KeyPathTestingTests
//
//  Created by Vincent PRADEILLES on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import XCTest
import KeyPathTesting

class AssertTests: XCTestCase {
    
    func testEmptyAssert() {
        assert(on: ()) {
            .empty
        }
    }
    
    func testCombinedAsserts() {
        let first = Assert<Void>(assertor: { _, _, _ in })
        let second = Assert<Void>(assertor: { _, _, _ in })
        
        let combined = first.combined(with: second)
        
        assert(on: ()) {
            combined
        }
    }
}

