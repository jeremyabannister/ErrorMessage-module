//
//  ErrorMessage_tests.swift
//  
//
//  Created by Jeremy Bannister on 3/23/23.
//

///
@_exported import ErrorMessageTestToolkit


///
extension ErrorMessage_tests {
    
    ///
    func test_existence () {
        let _: ErrorMessage
    }
    
    ///
    func test_conformances () {
        proof_Codable(metatype)
        proof_Error(metatype)
        proof_Hashable(metatype)
    }
    
    ///
    func test_message () {
        proof_property(\.message, String.self)
    }
    
    ///
    func test_init () {
        XCTAssertEqual(ErrorMessage("testing123").message, "testing123")
    }
}
