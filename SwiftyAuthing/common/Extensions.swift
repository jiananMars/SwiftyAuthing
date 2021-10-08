//
//  Extensions.swift
//  SwiftyAuthing
//
//  Created by Eric Woo on 2021/1/20.
//

import Apollo
import Foundation

extension GraphQLError {
    
    /// A display message of the error.
    public var displayMessage: String? {
        guard let dic = self["message"] as? Dictionary<String, Any> else {
            return self["message"] as? String
        }
        return dic["message"] as? String
    }
    
    /// A display code of the error.
    public var displayCode: Int64? {
        guard let dic = self["message"] as? Dictionary<String, Any> else {
            return 0
        }
        return dic["code"] as? Int64
    }
    
}
