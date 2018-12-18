
import XCTest
@testable import First_Demo

class First_DemoTests: XCTestCase {
    var viewController: ViewController!

    override func setUp() {
        viewController = ViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNumberOfVowelsInString_ShouldReturnNumberOfVowels() {
        let string = "Dominik"
        let numberOfVowels = viewController.numberOfVowelsInString(string: string)

        XCTAssertEqual(numberOfVowels, 3, "should find 3 vowels in Dominik")
    }
    
    func testMakeHeadline_ReturnsStringWithEachWordStartCapital() {
        let inputString = "this is A test headline"
        let expectedHeadline = "This Is A Test Headline"
        
        let result = viewController.makeHeadline(string: inputString)
        XCTAssertEqual(result, expectedHeadline)
    }
    
    func testMakeHeadline_ReturnsStringWithEachWordStartCapital2() {
        let inputString = "Here is another Example"
        let expectedHeadline = "Here Is Another Example"
        
        let result = viewController.makeHeadline(string: inputString)
        XCTAssertEqual(result, expectedHeadline)
    }
}
