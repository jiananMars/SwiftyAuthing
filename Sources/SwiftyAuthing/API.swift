//
//  API.swift
//  SwiftyAuthing
//
//  Created by Eric Woo on 2020/10/27.
//
// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class CheckLoginStatusQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query checkLoginStatus {
      checkLoginStatus {
        __typename
        status
        code
        message
      }
    }
    """

  public let operationName: String = "checkLoginStatus"

  public let operationIdentifier: String? = "55b3ef3f71a6fb3fbe1c71bbc4a70e585ce6d69ebf589c7ff1626ff1227e84c1"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("checkLoginStatus", type: .object(CheckLoginStatus.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(checkLoginStatus: CheckLoginStatus? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "checkLoginStatus": checkLoginStatus.flatMap { (value: CheckLoginStatus) -> ResultMap in value.resultMap }])
    }

    public var checkLoginStatus: CheckLoginStatus? {
      get {
        return (resultMap["checkLoginStatus"] as? ResultMap).flatMap { CheckLoginStatus(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "checkLoginStatus")
      }
    }

    public struct CheckLoginStatus: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["JWTDecodedDataCheckLogin"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("status", type: .scalar(Bool.self)),
          GraphQLField("code", type: .scalar(Int.self)),
          GraphQLField("message", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(status: Bool? = nil, code: Int? = nil, message: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "JWTDecodedDataCheckLogin", "status": status, "code": code, "message": message])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var status: Bool? {
        get {
          return resultMap["status"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var code: Int? {
        get {
          return resultMap["code"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "code")
        }
      }

      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }
    }
  }
}

public final class GetClientWhenSdkInitQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getClientWhenSdkInit($secret: String, $clientId: String, $retUserId: Boolean, $timestamp: String, $signature: String, $nonce: Int) {
      getClientWhenSdkInit(secret: $secret, clientId: $clientId, retUserId: $retUserId, timestamp: $timestamp, signature: $signature, nonce: $nonce) {
        __typename
        accessToken
        clientInfo {
          __typename
          _id
          name
          descriptions
          jwtExpired
          createdAt
          isDeleted
          logo
          emailVerifiedDefault
          registerDisabled
          allowedOrigins
          clientType {
            __typename
            _id
            name
            description
            image
            example
          }
        }
      }
    }
    """

  public let operationName: String = "getClientWhenSdkInit"

  public let operationIdentifier: String? = "12738f9b4e36280de77485af5ae8e6182a2366ef79187634085e93c4a86b50c5"

  public var secret: String?
  public var clientId: String?
  public var retUserId: Bool?
  public var timestamp: String?
  public var signature: String?
  public var nonce: Int?

  public init(secret: String? = nil, clientId: String? = nil, retUserId: Bool? = nil, timestamp: String? = nil, signature: String? = nil, nonce: Int? = nil) {
    self.secret = secret
    self.clientId = clientId
    self.retUserId = retUserId
    self.timestamp = timestamp
    self.signature = signature
    self.nonce = nonce
  }

  public var variables: GraphQLMap? {
    return ["secret": secret, "clientId": clientId, "retUserId": retUserId, "timestamp": timestamp, "signature": signature, "nonce": nonce]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getClientWhenSdkInit", arguments: ["secret": GraphQLVariable("secret"), "clientId": GraphQLVariable("clientId"), "retUserId": GraphQLVariable("retUserId"), "timestamp": GraphQLVariable("timestamp"), "signature": GraphQLVariable("signature"), "nonce": GraphQLVariable("nonce")], type: .object(GetClientWhenSdkInit.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getClientWhenSdkInit: GetClientWhenSdkInit? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getClientWhenSdkInit": getClientWhenSdkInit.flatMap { (value: GetClientWhenSdkInit) -> ResultMap in value.resultMap }])
    }

    /// SDK 初始化
    public var getClientWhenSdkInit: GetClientWhenSdkInit? {
      get {
        return (resultMap["getClientWhenSdkInit"] as? ResultMap).flatMap { GetClientWhenSdkInit(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getClientWhenSdkInit")
      }
    }

    public struct GetClientWhenSdkInit: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ClientInfoAndAccessToken"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("accessToken", type: .scalar(String.self)),
          GraphQLField("clientInfo", type: .object(ClientInfo.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(accessToken: String? = nil, clientInfo: ClientInfo? = nil) {
        self.init(unsafeResultMap: ["__typename": "ClientInfoAndAccessToken", "accessToken": accessToken, "clientInfo": clientInfo.flatMap { (value: ClientInfo) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var accessToken: String? {
        get {
          return resultMap["accessToken"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "accessToken")
        }
      }

      public var clientInfo: ClientInfo? {
        get {
          return (resultMap["clientInfo"] as? ResultMap).flatMap { ClientInfo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "clientInfo")
        }
      }

      public struct ClientInfo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserClient"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("_id", type: .scalar(String.self)),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("descriptions", type: .scalar(String.self)),
            GraphQLField("jwtExpired", type: .scalar(Int.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("isDeleted", type: .scalar(Bool.self)),
            GraphQLField("logo", type: .scalar(String.self)),
            GraphQLField("emailVerifiedDefault", type: .scalar(Bool.self)),
            GraphQLField("registerDisabled", type: .scalar(Bool.self)),
            GraphQLField("allowedOrigins", type: .scalar(String.self)),
            GraphQLField("clientType", type: .object(ClientType.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(_id: String? = nil, name: String? = nil, descriptions: String? = nil, jwtExpired: Int? = nil, createdAt: String? = nil, isDeleted: Bool? = nil, logo: String? = nil, emailVerifiedDefault: Bool? = nil, registerDisabled: Bool? = nil, allowedOrigins: String? = nil, clientType: ClientType? = nil) {
          self.init(unsafeResultMap: ["__typename": "UserClient", "_id": _id, "name": name, "descriptions": descriptions, "jwtExpired": jwtExpired, "createdAt": createdAt, "isDeleted": isDeleted, "logo": logo, "emailVerifiedDefault": emailVerifiedDefault, "registerDisabled": registerDisabled, "allowedOrigins": allowedOrigins, "clientType": clientType.flatMap { (value: ClientType) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var _id: String? {
          get {
            return resultMap["_id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "_id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var descriptions: String? {
          get {
            return resultMap["descriptions"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptions")
          }
        }

        public var jwtExpired: Int? {
          get {
            return resultMap["jwtExpired"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "jwtExpired")
          }
        }

        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var isDeleted: Bool? {
          get {
            return resultMap["isDeleted"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isDeleted")
          }
        }

        public var logo: String? {
          get {
            return resultMap["logo"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "logo")
          }
        }

        public var emailVerifiedDefault: Bool? {
          get {
            return resultMap["emailVerifiedDefault"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "emailVerifiedDefault")
          }
        }

        public var registerDisabled: Bool? {
          get {
            return resultMap["registerDisabled"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "registerDisabled")
          }
        }

        public var allowedOrigins: String? {
          get {
            return resultMap["allowedOrigins"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "allowedOrigins")
          }
        }

        public var clientType: ClientType? {
          get {
            return (resultMap["clientType"] as? ResultMap).flatMap { ClientType(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "clientType")
          }
        }

        public struct ClientType: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["UserClientType"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("_id", type: .scalar(String.self)),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("description", type: .scalar(String.self)),
              GraphQLField("image", type: .scalar(String.self)),
              GraphQLField("example", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(_id: String? = nil, name: String? = nil, description: String? = nil, image: String? = nil, example: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserClientType", "_id": _id, "name": name, "description": description, "image": image, "example": example])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var _id: String? {
            get {
              return resultMap["_id"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "_id")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return resultMap["description"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "description")
            }
          }

          public var image: String? {
            get {
              return resultMap["image"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "image")
            }
          }

          public var example: String? {
            get {
              return resultMap["example"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "example")
            }
          }
        }
      }
    }
  }
}

public final class LoginMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation login($unionid: String, $email: String, $password: String, $lastIP: String, $registerInClient: String!, $verifyCode: String, $browser: String, $device: String) {
      login(unionid: $unionid, email: $email, password: $password, lastIP: $lastIP, registerInClient: $registerInClient, verifyCode: $verifyCode, browser: $browser, device: $device) {
        __typename
        _id
        email
        emailVerified
        username
        nickname
        company
        photo
        browser
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
      }
    }
    """

  public let operationName: String = "login"

  public let operationIdentifier: String? = "26bc846564ee53279dfe3a871bc884a171d161f3c52bbff64bd548d9df1c5fd8"

  public var unionid: String?
  public var email: String?
  public var password: String?
  public var lastIP: String?
  public var registerInClient: String
  public var verifyCode: String?
  public var browser: String?
  public var device: String?

  public init(unionid: String? = nil, email: String? = nil, password: String? = nil, lastIP: String? = nil, registerInClient: String, verifyCode: String? = nil, browser: String? = nil, device: String? = nil) {
    self.unionid = unionid
    self.email = email
    self.password = password
    self.lastIP = lastIP
    self.registerInClient = registerInClient
    self.verifyCode = verifyCode
    self.browser = browser
    self.device = device
  }

  public var variables: GraphQLMap? {
    return ["unionid": unionid, "email": email, "password": password, "lastIP": lastIP, "registerInClient": registerInClient, "verifyCode": verifyCode, "browser": browser, "device": device]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["unionid": GraphQLVariable("unionid"), "email": GraphQLVariable("email"), "password": GraphQLVariable("password"), "lastIP": GraphQLVariable("lastIP"), "registerInClient": GraphQLVariable("registerInClient"), "verifyCode": GraphQLVariable("verifyCode"), "browser": GraphQLVariable("browser"), "device": GraphQLVariable("device")], type: .object(Login.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.flatMap { (value: Login) -> ResultMap in value.resultMap }])
    }

    public var login: Login? {
      get {
        return (resultMap["login"] as? ResultMap).flatMap { Login(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ExtendUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: String? = nil, email: String? = nil, emailVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, company: String? = nil, photo: String? = nil, browser: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "ExtendUser", "_id": _id, "email": email, "emailVerified": emailVerified, "username": username, "nickname": nickname, "company": company, "photo": photo, "browser": browser, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var company: String? {
        get {
          return resultMap["company"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "company")
        }
      }

      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }
    }
  }
}

public final class LoginByPhoneCodeMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginByPhoneCode($phone: String, $phoneCode: Int, $registerInClient: String!, $browser: String, $device: String) {
      login(phone: $phone, phoneCode: $phoneCode, registerInClient: $registerInClient, browser: $browser, device: $device) {
        __typename
        _id
        email
        emailVerified
        username
        nickname
        phone
        company
        photo
        browser
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
      }
    }
    """

  public let operationName: String = "loginByPhoneCode"

  public let operationIdentifier: String? = "1783b109de7479a1e60c733a5bd870f3e4ac74c9b8cb7133cf4837955fac22c9"

  public var phone: String?
  public var phoneCode: Int?
  public var registerInClient: String
  public var browser: String?
  public var device: String?

  public init(phone: String? = nil, phoneCode: Int? = nil, registerInClient: String, browser: String? = nil, device: String? = nil) {
    self.phone = phone
    self.phoneCode = phoneCode
    self.registerInClient = registerInClient
    self.browser = browser
    self.device = device
  }

  public var variables: GraphQLMap? {
    return ["phone": phone, "phoneCode": phoneCode, "registerInClient": registerInClient, "browser": browser, "device": device]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["phone": GraphQLVariable("phone"), "phoneCode": GraphQLVariable("phoneCode"), "registerInClient": GraphQLVariable("registerInClient"), "browser": GraphQLVariable("browser"), "device": GraphQLVariable("device")], type: .object(Login.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.flatMap { (value: Login) -> ResultMap in value.resultMap }])
    }

    public var login: Login? {
      get {
        return (resultMap["login"] as? ResultMap).flatMap { Login(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ExtendUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: String? = nil, email: String? = nil, emailVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, phone: String? = nil, company: String? = nil, photo: String? = nil, browser: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "ExtendUser", "_id": _id, "email": email, "emailVerified": emailVerified, "username": username, "nickname": nickname, "phone": phone, "company": company, "photo": photo, "browser": browser, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var company: String? {
        get {
          return resultMap["company"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "company")
        }
      }

      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }
    }
  }
}

public final class LoginByPhonePasswordMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginByPhonePassword($phone: String, $password: String, $registerInClient: String!, $browser: String, $device: String) {
      login(phone: $phone, password: $password, registerInClient: $registerInClient, browser: $browser, device: $device) {
        __typename
        _id
        email
        emailVerified
        username
        nickname
        phone
        company
        photo
        browser
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
      }
    }
    """

  public let operationName: String = "loginByPhonePassword"

  public let operationIdentifier: String? = "755cc4d69fcd34dbc66c739d213b426a2d94be636238d86e9c9b572a2d19c800"

  public var phone: String?
  public var password: String?
  public var registerInClient: String
  public var browser: String?
  public var device: String?

  public init(phone: String? = nil, password: String? = nil, registerInClient: String, browser: String? = nil, device: String? = nil) {
    self.phone = phone
    self.password = password
    self.registerInClient = registerInClient
    self.browser = browser
    self.device = device
  }

  public var variables: GraphQLMap? {
    return ["phone": phone, "password": password, "registerInClient": registerInClient, "browser": browser, "device": device]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["phone": GraphQLVariable("phone"), "password": GraphQLVariable("password"), "registerInClient": GraphQLVariable("registerInClient"), "browser": GraphQLVariable("browser"), "device": GraphQLVariable("device")], type: .object(Login.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.flatMap { (value: Login) -> ResultMap in value.resultMap }])
    }

    public var login: Login? {
      get {
        return (resultMap["login"] as? ResultMap).flatMap { Login(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ExtendUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: String? = nil, email: String? = nil, emailVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, phone: String? = nil, company: String? = nil, photo: String? = nil, browser: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "ExtendUser", "_id": _id, "email": email, "emailVerified": emailVerified, "username": username, "nickname": nickname, "phone": phone, "company": company, "photo": photo, "browser": browser, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var company: String? {
        get {
          return resultMap["company"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "company")
        }
      }

      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }
    }
  }
}

public final class LoginByUsernameMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginByUsername($username: String, $password: String, $registerInClient: String!, $browser: String, $device: String) {
      login(username: $username, password: $password, registerInClient: $registerInClient, browser: $browser, device: $device) {
        __typename
        _id
        email
        emailVerified
        username
        nickname
        phone
        company
        photo
        browser
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
      }
    }
    """

  public let operationName: String = "loginByUsername"

  public let operationIdentifier: String? = "ceb293b1d29e7a7ab8ac8a2014919fc00e0386da0375e958a15db13ad99f8a09"

  public var username: String?
  public var password: String?
  public var registerInClient: String
  public var browser: String?
  public var device: String?

  public init(username: String? = nil, password: String? = nil, registerInClient: String, browser: String? = nil, device: String? = nil) {
    self.username = username
    self.password = password
    self.registerInClient = registerInClient
    self.browser = browser
    self.device = device
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password, "registerInClient": registerInClient, "browser": browser, "device": device]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["username": GraphQLVariable("username"), "password": GraphQLVariable("password"), "registerInClient": GraphQLVariable("registerInClient"), "browser": GraphQLVariable("browser"), "device": GraphQLVariable("device")], type: .object(Login.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.flatMap { (value: Login) -> ResultMap in value.resultMap }])
    }

    public var login: Login? {
      get {
        return (resultMap["login"] as? ResultMap).flatMap { Login(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ExtendUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: String? = nil, email: String? = nil, emailVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, phone: String? = nil, company: String? = nil, photo: String? = nil, browser: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "ExtendUser", "_id": _id, "email": email, "emailVerified": emailVerified, "username": username, "nickname": nickname, "phone": phone, "company": company, "photo": photo, "browser": browser, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var company: String? {
        get {
          return resultMap["company"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "company")
        }
      }

      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }
    }
  }
}

public final class RegisterMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation register($unionid: String, $email: String, $password: String, $lastIP: String, $forceLogin: Boolean, $registerInClient: String!, $oauth: String, $username: String, $nickname: String, $registerMethod: String, $photo: String, $browser: String, $device: String) {
      register(userInfo: {unionid: $unionid, email: $email, password: $password, lastIP: $lastIP, forceLogin: $forceLogin, registerInClient: $registerInClient, oauth: $oauth, registerMethod: $registerMethod, photo: $photo, username: $username, nickname: $nickname, device: $device, browser: $browser}) {
        __typename
        _id
        email
        emailVerified
        username
        nickname
        company
        photo
        browser
        password
        token
        group {
          __typename
          name
        }
        blocked
        device
      }
    }
    """

  public let operationName: String = "register"

  public let operationIdentifier: String? = "a2212c1d0175008b16228f13a5564f01bf993e45572b46c59af321e1c2f89fcd"

  public var unionid: String?
  public var email: String?
  public var password: String?
  public var lastIP: String?
  public var forceLogin: Bool?
  public var registerInClient: String
  public var oauth: String?
  public var username: String?
  public var nickname: String?
  public var registerMethod: String?
  public var photo: String?
  public var browser: String?
  public var device: String?

  public init(unionid: String? = nil, email: String? = nil, password: String? = nil, lastIP: String? = nil, forceLogin: Bool? = nil, registerInClient: String, oauth: String? = nil, username: String? = nil, nickname: String? = nil, registerMethod: String? = nil, photo: String? = nil, browser: String? = nil, device: String? = nil) {
    self.unionid = unionid
    self.email = email
    self.password = password
    self.lastIP = lastIP
    self.forceLogin = forceLogin
    self.registerInClient = registerInClient
    self.oauth = oauth
    self.username = username
    self.nickname = nickname
    self.registerMethod = registerMethod
    self.photo = photo
    self.browser = browser
    self.device = device
  }

  public var variables: GraphQLMap? {
    return ["unionid": unionid, "email": email, "password": password, "lastIP": lastIP, "forceLogin": forceLogin, "registerInClient": registerInClient, "oauth": oauth, "username": username, "nickname": nickname, "registerMethod": registerMethod, "photo": photo, "browser": browser, "device": device]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("register", arguments: ["userInfo": ["unionid": GraphQLVariable("unionid"), "email": GraphQLVariable("email"), "password": GraphQLVariable("password"), "lastIP": GraphQLVariable("lastIP"), "forceLogin": GraphQLVariable("forceLogin"), "registerInClient": GraphQLVariable("registerInClient"), "oauth": GraphQLVariable("oauth"), "registerMethod": GraphQLVariable("registerMethod"), "photo": GraphQLVariable("photo"), "username": GraphQLVariable("username"), "nickname": GraphQLVariable("nickname"), "device": GraphQLVariable("device"), "browser": GraphQLVariable("browser")]], type: .object(Register.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(register: Register? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "register": register.flatMap { (value: Register) -> ResultMap in value.resultMap }])
    }

    public var register: Register? {
      get {
        return (resultMap["register"] as? ResultMap).flatMap { Register(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "register")
      }
    }

    public struct Register: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ExtendUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("group", type: .object(Group.selections)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: String? = nil, email: String? = nil, emailVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, company: String? = nil, photo: String? = nil, browser: String? = nil, password: String? = nil, token: String? = nil, group: Group? = nil, blocked: Bool? = nil, device: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "ExtendUser", "_id": _id, "email": email, "emailVerified": emailVerified, "username": username, "nickname": nickname, "company": company, "photo": photo, "browser": browser, "password": password, "token": token, "group": group.flatMap { (value: Group) -> ResultMap in value.resultMap }, "blocked": blocked, "device": device])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var company: String? {
        get {
          return resultMap["company"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "company")
        }
      }

      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
        }
      }

      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public var group: Group? {
        get {
          return (resultMap["group"] as? ResultMap).flatMap { Group(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "group")
        }
      }

      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      public var device: String? {
        get {
          return resultMap["device"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "device")
        }
      }

      public struct Group: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Group"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Group", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

public final class RegisterByUsernameMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation registerByUsername($username: String, $password: String, $registerInClient: String!, $forceLogin: Boolean, $generateToken: Boolean, $clientIp: String) {
      register(username: $username, password: $password, registerInClient: $registerInClient, forceLogin: $forceLogin, generateToken: $generateToken, clientIp: $clientIp) {
        __typename
        _id
        email
        emailVerified
        username
        nickname
        phone
        company
        photo
        browser
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
      }
    }
    """

  public let operationName: String = "registerByUsername"

  public let operationIdentifier: String? = "9465ed50ecc29ac08a44e5290da2972f0e68eb27aaf6242edec70ab4417d5904"

  public var username: String?
  public var password: String?
  public var registerInClient: String
  public var forceLogin: Bool?
  public var generateToken: Bool?
  public var clientIp: String?

  public init(username: String? = nil, password: String? = nil, registerInClient: String, forceLogin: Bool? = nil, generateToken: Bool? = nil, clientIp: String? = nil) {
    self.username = username
    self.password = password
    self.registerInClient = registerInClient
    self.forceLogin = forceLogin
    self.generateToken = generateToken
    self.clientIp = clientIp
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password, "registerInClient": registerInClient, "forceLogin": forceLogin, "generateToken": generateToken, "clientIp": clientIp]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("register", arguments: ["username": GraphQLVariable("username"), "password": GraphQLVariable("password"), "registerInClient": GraphQLVariable("registerInClient"), "forceLogin": GraphQLVariable("forceLogin"), "generateToken": GraphQLVariable("generateToken"), "clientIp": GraphQLVariable("clientIp")], type: .object(Register.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(register: Register? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "register": register.flatMap { (value: Register) -> ResultMap in value.resultMap }])
    }

    public var register: Register? {
      get {
        return (resultMap["register"] as? ResultMap).flatMap { Register(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "register")
      }
    }

    public struct Register: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ExtendUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: String? = nil, email: String? = nil, emailVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, phone: String? = nil, company: String? = nil, photo: String? = nil, browser: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "ExtendUser", "_id": _id, "email": email, "emailVerified": emailVerified, "username": username, "nickname": nickname, "phone": phone, "company": company, "photo": photo, "browser": browser, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      public var company: String? {
        get {
          return resultMap["company"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "company")
        }
      }

      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }
    }
  }
}

public final class SendVerifyEmailMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation sendVerifyEmail($email: String!, $client: String!) {
      sendVerifyEmail(email: $email, client: $client) {
        __typename
        message
        code
        status
      }
    }
    """

  public let operationName: String = "sendVerifyEmail"

  public let operationIdentifier: String? = "bde9df13462040bb263763871b296be0cb50a69bfb9cd71a0e4531c6ab6e2dd0"

  public var email: String
  public var client: String

  public init(email: String, client: String) {
    self.email = email
    self.client = client
  }

  public var variables: GraphQLMap? {
    return ["email": email, "client": client]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("sendVerifyEmail", arguments: ["email": GraphQLVariable("email"), "client": GraphQLVariable("client")], type: .object(SendVerifyEmail.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(sendVerifyEmail: SendVerifyEmail? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "sendVerifyEmail": sendVerifyEmail.flatMap { (value: SendVerifyEmail) -> ResultMap in value.resultMap }])
    }

    public var sendVerifyEmail: SendVerifyEmail? {
      get {
        return (resultMap["sendVerifyEmail"] as? ResultMap).flatMap { SendVerifyEmail(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "sendVerifyEmail")
      }
    }

    public struct SendVerifyEmail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CommonMessage"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("code", type: .scalar(Int.self)),
          GraphQLField("status", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String? = nil, code: Int? = nil, status: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "CommonMessage", "message": message, "code": code, "status": status])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var code: Int? {
        get {
          return resultMap["code"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "code")
        }
      }

      public var status: Bool? {
        get {
          return resultMap["status"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updateUser($_id: String!, $email: String, $emailVerified: Boolean, $username: String, $nickname: String, $company: String, $photo: String, $browser: String, $password: String, $oldPassword: String, $registerInClient: String!, $token: String, $tokenExpiredAt: String, $loginsCount: Int, $lastLogin: String, $lastIP: String, $signedUp: String, $blocked: Boolean, $isDeleted: Boolean) {
      updateUser(options: {_id: $_id, email: $email, emailVerified: $emailVerified, username: $username, nickname: $nickname, company: $company, photo: $photo, browser: $browser, password: $password, oldPassword: $oldPassword, registerInClient: $registerInClient, token: $token, tokenExpiredAt: $tokenExpiredAt, loginsCount: $loginsCount, lastLogin: $lastLogin, lastIP: $lastIP, signedUp: $signedUp, blocked: $blocked, isDeleted: $isDeleted}) {
        __typename
        _id
        email
        emailVerified
        username
        nickname
        company
        photo
        browser
        registerInClient
        registerMethod
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
      }
    }
    """

  public let operationName: String = "updateUser"

  public let operationIdentifier: String? = "a6a1afb31b911f91bfa84dab963be0a3d7821c61df8fa1f315eb8a6734b3baed"

  public var _id: String
  public var email: String?
  public var emailVerified: Bool?
  public var username: String?
  public var nickname: String?
  public var company: String?
  public var photo: String?
  public var browser: String?
  public var password: String?
  public var oldPassword: String?
  public var registerInClient: String
  public var token: String?
  public var tokenExpiredAt: String?
  public var loginsCount: Int?
  public var lastLogin: String?
  public var lastIP: String?
  public var signedUp: String?
  public var blocked: Bool?
  public var isDeleted: Bool?

  public init(_id: String, email: String? = nil, emailVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, company: String? = nil, photo: String? = nil, browser: String? = nil, password: String? = nil, oldPassword: String? = nil, registerInClient: String, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIP: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil) {
    self._id = _id
    self.email = email
    self.emailVerified = emailVerified
    self.username = username
    self.nickname = nickname
    self.company = company
    self.photo = photo
    self.browser = browser
    self.password = password
    self.oldPassword = oldPassword
    self.registerInClient = registerInClient
    self.token = token
    self.tokenExpiredAt = tokenExpiredAt
    self.loginsCount = loginsCount
    self.lastLogin = lastLogin
    self.lastIP = lastIP
    self.signedUp = signedUp
    self.blocked = blocked
    self.isDeleted = isDeleted
  }

  public var variables: GraphQLMap? {
    return ["_id": _id, "email": email, "emailVerified": emailVerified, "username": username, "nickname": nickname, "company": company, "photo": photo, "browser": browser, "password": password, "oldPassword": oldPassword, "registerInClient": registerInClient, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIP, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateUser", arguments: ["options": ["_id": GraphQLVariable("_id"), "email": GraphQLVariable("email"), "emailVerified": GraphQLVariable("emailVerified"), "username": GraphQLVariable("username"), "nickname": GraphQLVariable("nickname"), "company": GraphQLVariable("company"), "photo": GraphQLVariable("photo"), "browser": GraphQLVariable("browser"), "password": GraphQLVariable("password"), "oldPassword": GraphQLVariable("oldPassword"), "registerInClient": GraphQLVariable("registerInClient"), "token": GraphQLVariable("token"), "tokenExpiredAt": GraphQLVariable("tokenExpiredAt"), "loginsCount": GraphQLVariable("loginsCount"), "lastLogin": GraphQLVariable("lastLogin"), "lastIP": GraphQLVariable("lastIP"), "signedUp": GraphQLVariable("signedUp"), "blocked": GraphQLVariable("blocked"), "isDeleted": GraphQLVariable("isDeleted")]], type: .object(UpdateUser.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateUser": updateUser.flatMap { (value: UpdateUser) -> ResultMap in value.resultMap }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (resultMap["updateUser"] as? ResultMap).flatMap { UpdateUser(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ExtendUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("_id", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("registerInClient", type: .scalar(String.self)),
          GraphQLField("registerMethod", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(_id: String? = nil, email: String? = nil, emailVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, company: String? = nil, photo: String? = nil, browser: String? = nil, registerInClient: String? = nil, registerMethod: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "ExtendUser", "_id": _id, "email": email, "emailVerified": emailVerified, "username": username, "nickname": nickname, "company": company, "photo": photo, "browser": browser, "registerInClient": registerInClient, "registerMethod": registerMethod, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var _id: String? {
        get {
          return resultMap["_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "_id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      public var company: String? {
        get {
          return resultMap["company"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "company")
        }
      }

      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
        }
      }

      public var registerInClient: String? {
        get {
          return resultMap["registerInClient"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerInClient")
        }
      }

      public var registerMethod: String? {
        get {
          return resultMap["registerMethod"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerMethod")
        }
      }

      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
        }
      }
    }
  }
}
