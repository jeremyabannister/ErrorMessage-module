//
//  ErrorMessage.swift
//  
//
//  Created by Jeremy Bannister on 3/23/23.
//

///
public struct ErrorMessage: Hashable,
                            LocalizedError,
                            Codable,
                            CustomStringConvertible {
    
    ///
    public let message: String
    
    ///
    public init (_ message: String) {
        self.message = message
    }
    
    ///
    public init (_ error: Error) {
        self.init("\(error)")
    }
}

///
extension ErrorMessage {
    
    ///
    public static var blank: Self {
        .init("")
    }
}

///
extension ErrorMessage {
    
    ///
    public var errorDescription: String? {
        message
    }
}

///
extension ErrorMessage {
    
    ///
    public var description: String {
        message
    }
}

