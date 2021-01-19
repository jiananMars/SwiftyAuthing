//
//  Config.swift
//  SwiftyAuthing
//
//  Created by Eric Woo on 2020/11/1.
//

import Foundation

/// Config information
///
public class Config {
    
    /// Domain.
    ///
    public static let domain = "https://core.authing.cn"
    
    /// GraphQL Host.
    ///
    public static let host = domain + "/graphql/v2"
    
    /// SMS Host.
    ///
    public static let sms = domain + "/api/v2/sms/send"
    
    /// Encrypt with PKCS1v1.5 PublicKey.
    ///
    public static let publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4xKeUgQ+Aoz7TLfAfs9+paePb" +
        "5KIofVthEopwrXFkp8OCeocaTHt9ICjTT2QeJh6cZaDaArfZ873GPUn00eOIZ7Ae" +
        "+TiA2BKHbCvloW3w5Lnqm70iSsUi5Fmu9/2+68GZRH9L7Mlh8cFksCicW2Y2W2uM" +
        "GKl64GDcIq3au+aqJQIDAQAB"
    
    /// User Pool Id Key for Header.
    ///
    public static let userpoolidHeader = "x-authing-userpool-id"
    
    /// User Pool Id Key.
    ///
    public static let keyUserPoolId = "userPoolId"
    
    /// User App Id Key for Header.
    ///
    public static let appidHeader = "x-authing-app-id"
    
    /// User App Id Key.
    ///
    public static let keyAppId = "appId"
    
    /// AccessToken Key.
    ///
    public static let keyAccessToken = "accessToken"
}
