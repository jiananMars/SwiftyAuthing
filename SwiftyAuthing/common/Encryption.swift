//
//  Encryption.swift
//  SwiftyAuthing
//
//  Created by Eric Woo on 2020/11/1.
//

import Foundation
//import sws

class Encryption {
    /// Encrypt with PKCS1v1.5.
    /// - parameter message: Message to encrypt
    /// - returns: Encrypted message
    ///
    /// Encrypt with PKCS1v1.5.
    ///
    public static func encrypt(_ message: String) -> String {
        let pubData: Data = Data(base64Encoded: Config.publicKey)!
        
        let publicKeyPEM = SwKeyConvert.PublicKey.derToPKCS8PEM(pubData)
        
        let newPublicKeyPEM = self.fetchPEMString(oldPEMString: publicKeyPEM)
        
        let publicKeyDER = try? SwKeyConvert.PublicKey.pemToPKCS1DER(newPublicKeyPEM)
        
        let testData = message.data(using: String.Encoding.utf8)!
        
        let e = CC.RSA.encrypt(testData, derKey: publicKeyDER!, tag: Data(), padding: .pkcs1, digest: .none)
        
        return e.base64EncodedString()
    }
    
    
    /// 去掉公钥的回车换行符
    /// - Parameter oldPEMString: 包含回车换行符的PEM 字符串
    /// - Returns: 去掉公钥中回车换行符的PEM 字符串
    public static func fetchPEMString(oldPEMString:String ) ->String
    {
        let startIndex = oldPEMString.index(oldPEMString.firstIndex(of: "\n") ?? oldPEMString.endIndex, offsetBy: 3)
        let endIndex = oldPEMString.lastIndex(of: "\n") ?? oldPEMString.endIndex
        let newRange = startIndex..<endIndex
        
        return oldPEMString.replacingOccurrences(of: "\n", with: "", options: String.CompareOptions.caseInsensitive, range: newRange)
    }
    
    /// Stringify.
    /// - parameter value: Any value
    /// - returns: Stringify value
    ///
    /// Stringify any value.
    ///
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
    
    /// JWT Decode.
    /// - parameter token: User Token
    /// - returns: User Id
    ///
    /// Decode JWT and get User Id.
    ///
    public static func jwtDecode(_ token: String) -> String {
        if(token.count > 0) {
            let jwt = try! decode(jwt: token)
            let data = jwt.body["data"] as? [String : Any]
            let userId = data?["userId"] as? String ?? ""
            return userId
        } else {
            return token
        }
    }
    
    
    
}
