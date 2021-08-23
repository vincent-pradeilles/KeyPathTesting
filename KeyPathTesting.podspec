Pod::Spec.new do |s|
  s.name             = 'KeyPathTesting'
  s.version          = '0.1.3'
  s.summary          = 'KeyPathTesting is a framework that leverages Result Builders to implement a new syntax that allows developers to write KeyPath-based unit tests'

  s.description      = <<-DESC
KeyPathTesting is a Swift framework that leverages Result Builders to implement a new syntax that allows developers to write KeyPath-based unit tests.

Here's an example of how it can be used:

class MyTests: XCTestCase {
    func test() {
        let myData = [1, 2, 3, 4]
        
        assert(on: myData) {
            \.isEmpty == false
            \.count > 2
            \.first == 1
            \.last != 1
        }
    }
}
                       DESC

  s.homepage         = 'https://github.com/vincent-pradeilles/KeyPathTesting'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vincent Pradeilles' => 'vin.pradeilles+keypathtesting@gmail.com' }
  s.source           = { :git => 'https://github.com/vincent-pradeilles/KeyPathTesting.git', :tag => s.version.to_s }

  s.swift_version = '5.4'

  s.ios.deployment_target = '9.0'

  s.framework = 'Foundation'
  s.framework = 'XCTest'

  s.source_files = 'KeyPathTesting/KeyPathTesting/**/*.swift'

end
