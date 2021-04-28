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
    
    /// Default Domain.
    ///
    public static let domainDefault = "https://core.authing.cn"
    
    /// Domain.
    ///
    public static var domain = "https://core.authing.cn"
    
    /// GraphQL Host.
    ///
    public static let host = domain + "/graphql/v2"
    
    /// SMS Host.
    ///
    public static let sms = domain + "/api/v2/sms/send"
    
    /// ORG Host.
    ///
    public static let orgs = domain + "/api/v2/users/me/orgs"
    
    /// Verify user Host.
    ///
    public static let verifyuser = domain + "/api/v2/ldap/verify-user"
    
    /// WeChat code Host.
    ///
    public static func wechatmobile(userPoolId: String, code: String, appId: String) -> String {
        return domain + "/connection/social/wechat:mobile/" + userPoolId + "/callback?code=" + code +
            (appId.count > 0 ? "&app_id=" + appId : "")
    }
    
    /// User id verify Host.
    ///
    public static let idverify = domain + "/api/v2/users/id-verify"
    
    /// User id verify status Host.
    ///
    public static let idverifystatus = domain + "/api/v2/users/me/id-verify/status"
    
    /// Social link Host.
    ///
    public static let sociallink = domain + "/api/v2/users/link"
    
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
    public static let keyAccessToken = "token"
    
    /// Authorization for Header.
    ///
    public static let authorizationHeader = "Authorization"
    
    /// Content-Type for Header.
    ///
    public static let contentTypeHeader = "Content-Type"
    
    /// Content-Type Json for Header.
    ///
    public static let contentTypeHeaderJsonValue = "application/json; charset=utf-8"
    
    /// Content-Type application/x-www-form-urlencoded for Header.
    ///
    public static let contentTypeHeaderUrlencodedValue = "application/x-www-form-urlencoded"
    
    /// User Domain Key.
    ///
    public static let keyDomain = "domain"
    
    /// Get Host by Domain.
    ///
    public static func getHost(domain: String) -> String {
        return domain + "/graphql/v2"
    }
}
