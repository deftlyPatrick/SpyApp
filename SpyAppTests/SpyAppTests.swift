import XCTest
@testable import SpyApp

class SpyAppTests: XCTestCase {
    
    var cipher: Cipher!
    
    override func setUp() {
        super.setUp()
        cipher = CeaserCipher()
    }
   
    
    //unit test
    func testExample() {
        let plaintext = "1"
        
        let result = cipher.encode(plaintext, secret: "1")
        
        XCTAssertEqual(plaintext, result)
    }
    
    //unit test
    func testExample2(){
        let result = cipher.encode("123", secret: "numericString")
        
        XCTAssertNil(result)
    }

    //unit test
    
    func testExample3(){
        
        let result = cipher.encode("123", secret: "numericString")
        let result2 = cipher.encode("123", secret: "numericString")
        
        XCTAssertEqual(result, result2)
        
    }
    
}
