//
//  String+asErrorMessage.swift
//  
//
//  Created by Jeremy Bannister on 3/23/23.
//

///
extension String {
    
    ///
    public func asErrorMessage () -> ErrorMessage {
        ErrorMessage(self)
    }
}
