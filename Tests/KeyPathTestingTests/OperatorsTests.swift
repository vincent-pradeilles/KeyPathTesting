//
//  OperatorsTests.swift
//  KeyPathTestingTests
//
//  Created by Vincent PRADEILLES on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import XCTest
import KeyPathTesting

class OperatorsTests: XCTestCase {

	func testOperators() {
		let myData = [1, 2, 3, 4]

		assert(on: myData) {
			\.isEmpty == false
			\.isEmpty != true
			!\.isEmpty
			\.count > 2
			\.count >= 4
			\.count < 7
			\.count <= 4
			\.first == 1
			\.last != 1
		}
	}

}
