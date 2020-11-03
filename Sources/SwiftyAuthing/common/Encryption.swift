//
//  Encryption.swift
//  TestSMP
//
//  Created by Eric Woo on 2020/11/1.
//

import Foundation

class Encryption {
    
    /// Encrypt with PKCS1v1.5.
    /// - parameter message: Message to encrypt
    /// - returns: Encrypted message
    ///
    /// Encrypt with PKCS1v1.5.
    ///
    public static func encrypt(_ message: String) -> String {
        if(message.count > 0) {
            let publicKey = try! PublicKey(base64Encoded: Config.publicKey)
            let clear = try! ClearMessage(string: message, using: .utf8)
            let encrypted = try! clear.encrypted(with: publicKey, padding: .PKCS1)
            return encrypted.base64String
        } else {
            return message
        }
    }
    
    /// Stringify.
    ///
    public static func stringify(_ value: Any) -> String {
        switch value.self {
        case is String:
            return "\"\(value)\""
        case is Date:
            return "\"\(value)\""
        default:
            return "\(value)"
        }
    }
    
    
}
