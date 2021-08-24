//
//  Assertion.swift
//  KeyPathTesting
//
//  Created by Vincent on 12/06/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

public typealias RawAssertion<Type> = (_ instance: Type, _ file: StaticString, _ line: UInt) -> ()

public struct Assertion<Type> {

	public let assertion: RawAssertion<Type>
	public let file: StaticString
	public let line: UInt

	public init(assertion: @escaping RawAssertion<Type>, file: StaticString, line: UInt) {
		self.assertion = assertion
		self.file = file
		self.line = line
	}

	public func assert(on instance: Type) {
		assertion(instance, file, line)
	}

}
