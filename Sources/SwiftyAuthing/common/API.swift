//
//  API.swift
//  SwiftyAuthing
//
//  Created by Eric Woo on 2020/10/27.
//

import Apollo
import Foundation

public struct RegisterProfile: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - ip
  ///   - oauth
  ///   - nickname
  ///   - company
  ///   - photo
  ///   - device
  ///   - browser
  ///   - name
  ///   - givenName
  ///   - familyName
  ///   - middleName
  ///   - profile
  ///   - preferredUsername
  ///   - website
  ///   - gender
  ///   - birthdate
  ///   - zoneinfo
  ///   - locale
  ///   - address
  ///   - formatted
  ///   - streetAddress
  ///   - locality
  ///   - region
  ///   - postalCode
  ///   - country
  ///   - udf
  public init(ip: Swift.Optional<String?> = nil, oauth: Swift.Optional<String?> = nil, nickname: Swift.Optional<String?> = nil, company: Swift.Optional<String?> = nil, photo: Swift.Optional<String?> = nil, device: Swift.Optional<String?> = nil, browser: Swift.Optional<String?> = nil, name: Swift.Optional<String?> = nil, givenName: Swift.Optional<String?> = nil, familyName: Swift.Optional<String?> = nil, middleName: Swift.Optional<String?> = nil, profile: Swift.Optional<String?> = nil, preferredUsername: Swift.Optional<String?> = nil, website: Swift.Optional<String?> = nil, gender: Swift.Optional<String?> = nil, birthdate: Swift.Optional<String?> = nil, zoneinfo: Swift.Optional<String?> = nil, locale: Swift.Optional<String?> = nil, address: Swift.Optional<String?> = nil, formatted: Swift.Optional<String?> = nil, streetAddress: Swift.Optional<String?> = nil, locality: Swift.Optional<String?> = nil, region: Swift.Optional<String?> = nil, postalCode: Swift.Optional<String?> = nil, country: Swift.Optional<String?> = nil, udf: Swift.Optional<[UserDdfInput]?> = nil) {
    graphQLMap = ["ip": ip, "oauth": oauth, "nickname": nickname, "company": company, "photo": photo, "device": device, "browser": browser, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "country": country, "udf": udf]
  }

  public var ip: Swift.Optional<String?> {
    get {
      return graphQLMap["ip"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ip")
    }
  }

  public var oauth: Swift.Optional<String?> {
    get {
      return graphQLMap["oauth"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "oauth")
    }
  }

  public var nickname: Swift.Optional<String?> {
    get {
      return graphQLMap["nickname"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nickname")
    }
  }

  public var company: Swift.Optional<String?> {
    get {
      return graphQLMap["company"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "company")
    }
  }

  public var photo: Swift.Optional<String?> {
    get {
      return graphQLMap["photo"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "photo")
    }
  }

  public var device: Swift.Optional<String?> {
    get {
      return graphQLMap["device"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "device")
    }
  }

  public var browser: Swift.Optional<String?> {
    get {
      return graphQLMap["browser"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "browser")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var givenName: Swift.Optional<String?> {
    get {
      return graphQLMap["givenName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "givenName")
    }
  }

  public var familyName: Swift.Optional<String?> {
    get {
      return graphQLMap["familyName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "familyName")
    }
  }

  public var middleName: Swift.Optional<String?> {
    get {
      return graphQLMap["middleName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "middleName")
    }
  }

  public var profile: Swift.Optional<String?> {
    get {
      return graphQLMap["profile"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "profile")
    }
  }

  public var preferredUsername: Swift.Optional<String?> {
    get {
      return graphQLMap["preferredUsername"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "preferredUsername")
    }
  }

  public var website: Swift.Optional<String?> {
    get {
      return graphQLMap["website"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "website")
    }
  }

  public var gender: Swift.Optional<String?> {
    get {
      return graphQLMap["gender"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gender")
    }
  }

  public var birthdate: Swift.Optional<String?> {
    get {
      return graphQLMap["birthdate"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birthdate")
    }
  }

  public var zoneinfo: Swift.Optional<String?> {
    get {
      return graphQLMap["zoneinfo"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "zoneinfo")
    }
  }

  public var locale: Swift.Optional<String?> {
    get {
      return graphQLMap["locale"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locale")
    }
  }

  public var address: Swift.Optional<String?> {
    get {
      return graphQLMap["address"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
  }

  public var formatted: Swift.Optional<String?> {
    get {
      return graphQLMap["formatted"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "formatted")
    }
  }

  public var streetAddress: Swift.Optional<String?> {
    get {
      return graphQLMap["streetAddress"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "streetAddress")
    }
  }

  public var locality: Swift.Optional<String?> {
    get {
      return graphQLMap["locality"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locality")
    }
  }

  public var region: Swift.Optional<String?> {
    get {
      return graphQLMap["region"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "region")
    }
  }

  public var postalCode: Swift.Optional<String?> {
    get {
      return graphQLMap["postalCode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postalCode")
    }
  }

  public var country: Swift.Optional<String?> {
    get {
      return graphQLMap["country"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "country")
    }
  }

  public var udf: Swift.Optional<[UserDdfInput]?> {
    get {
      return graphQLMap["udf"] as? Swift.Optional<[UserDdfInput]?> ?? Swift.Optional<[UserDdfInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "udf")
    }
  }
}

public struct UserDdfInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - key
  ///   - value
  public init(key: String, value: String) {
    graphQLMap = ["key": key, "value": value]
  }

  public var key: String {
    get {
      return graphQLMap["key"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }

  public var value: String {
    get {
      return graphQLMap["value"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }
}

public enum UDFTargetType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case node
  case org
  case user
  case userpool
  case role
  case permission
  case application
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "NODE": self = .node
      case "ORG": self = .org
      case "USER": self = .user
      case "USERPOOL": self = .userpool
      case "ROLE": self = .role
      case "PERMISSION": self = .permission
      case "APPLICATION": self = .application
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .node: return "NODE"
      case .org: return "ORG"
      case .user: return "USER"
      case .userpool: return "USERPOOL"
      case .role: return "ROLE"
      case .permission: return "PERMISSION"
      case .application: return "APPLICATION"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: UDFTargetType, rhs: UDFTargetType) -> Bool {
    switch (lhs, rhs) {
      case (.node, .node): return true
      case (.org, .org): return true
      case (.user, .user): return true
      case (.userpool, .userpool): return true
      case (.role, .role): return true
      case (.permission, .permission): return true
      case (.application, .application): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [UDFTargetType] {
    return [
      .node,
      .org,
      .user,
      .userpool,
      .role,
      .permission,
      .application,
    ]
  }
}

public enum UDFDataType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case string
  case number
  case datetime
  case boolean
  case object
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "STRING": self = .string
      case "NUMBER": self = .number
      case "DATETIME": self = .datetime
      case "BOOLEAN": self = .boolean
      case "OBJECT": self = .object
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .string: return "STRING"
      case .number: return "NUMBER"
      case .datetime: return "DATETIME"
      case .boolean: return "BOOLEAN"
      case .object: return "OBJECT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: UDFDataType, rhs: UDFDataType) -> Bool {
    switch (lhs, rhs) {
      case (.string, .string): return true
      case (.number, .number): return true
      case (.datetime, .datetime): return true
      case (.boolean, .boolean): return true
      case (.object, .object): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [UDFDataType] {
    return [
      .string,
      .number,
      .datetime,
      .boolean,
      .object,
    ]
  }
}

/// 邮件使用场景
public enum EmailScene: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// 发送重置密码邮件，邮件中包含验证码
  case resetPassword
  /// 发送验证邮箱的邮件
  case verifyEmail
  /// 发送修改邮箱邮件，邮件中包含验证码
  case changeEmail
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "RESET_PASSWORD": self = .resetPassword
      case "VERIFY_EMAIL": self = .verifyEmail
      case "CHANGE_EMAIL": self = .changeEmail
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .resetPassword: return "RESET_PASSWORD"
      case .verifyEmail: return "VERIFY_EMAIL"
      case .changeEmail: return "CHANGE_EMAIL"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: EmailScene, rhs: EmailScene) -> Bool {
    switch (lhs, rhs) {
      case (.resetPassword, .resetPassword): return true
      case (.verifyEmail, .verifyEmail): return true
      case (.changeEmail, .changeEmail): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [EmailScene] {
    return [
      .resetPassword,
      .verifyEmail,
      .changeEmail,
    ]
  }
}

public final class BindPhoneMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation bindPhone($phone: String!, $phoneCode: String!) {
      bindPhone(phone: $phone, phoneCode: $phoneCode) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "bindPhone"

  public let operationIdentifier: String? = "c8dd3663836ac48832223cf3f4ef12acdc2290ea5a3fde1a2e2aeb9bc3d12937"

  public var phone: String
  public var phoneCode: String

  public init(phone: String, phoneCode: String) {
    self.phone = phone
    self.phoneCode = phoneCode
  }

  public var variables: GraphQLMap? {
    return ["phone": phone, "phoneCode": phoneCode]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("bindPhone", arguments: ["phone": GraphQLVariable("phone"), "phoneCode": GraphQLVariable("phoneCode")], type: .nonNull(.object(BindPhone.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(bindPhone: BindPhone) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "bindPhone": bindPhone.resultMap])
    }

    /// 绑定手机号，调用此接口需要当前用户未绑定手机号
    public var bindPhone: BindPhone {
      get {
        return BindPhone(unsafeResultMap: resultMap["bindPhone"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "bindPhone")
      }
    }

    public struct BindPhone: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class CheckLoginStatusQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query checkLoginStatus($token: String) {
      checkLoginStatus(token: $token) {
        __typename
        code
        message
        status
        exp
        iat
        data {
          __typename
          id
          userPoolId
          arn
        }
      }
    }
    """

  public let operationName: String = "checkLoginStatus"

  public let operationIdentifier: String? = "ca3039ee87efc288ad24e456fa75f5eb2ce247148b5335a211dda80b33805b4b"

  public var token: String?

  public init(token: String? = nil) {
    self.token = token
  }

  public var variables: GraphQLMap? {
    return ["token": token]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("checkLoginStatus", arguments: ["token": GraphQLVariable("token")], type: .object(CheckLoginStatus.selections)),
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
      public static let possibleTypes: [String] = ["JWTTokenStatus"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("code", type: .scalar(Int.self)),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("status", type: .scalar(Bool.self)),
          GraphQLField("exp", type: .scalar(Int.self)),
          GraphQLField("iat", type: .scalar(Int.self)),
          GraphQLField("data", type: .object(Datum.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(code: Int? = nil, message: String? = nil, status: Bool? = nil, exp: Int? = nil, iat: Int? = nil, data: Datum? = nil) {
        self.init(unsafeResultMap: ["__typename": "JWTTokenStatus", "code": code, "message": message, "status": status, "exp": exp, "iat": iat, "data": data.flatMap { (value: Datum) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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

      public var status: Bool? {
        get {
          return resultMap["status"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }

      public var exp: Int? {
        get {
          return resultMap["exp"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "exp")
        }
      }

      public var iat: Int? {
        get {
          return resultMap["iat"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "iat")
        }
      }

      public var data: Datum? {
        get {
          return (resultMap["data"] as? ResultMap).flatMap { Datum(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "data")
        }
      }

      public struct Datum: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["JWTTokenStatusDetail"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(String.self)),
            GraphQLField("userPoolId", type: .scalar(String.self)),
            GraphQLField("arn", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String? = nil, userPoolId: String? = nil, arn: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "JWTTokenStatusDetail", "id": id, "userPoolId": userPoolId, "arn": arn])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String? {
          get {
            return resultMap["id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userPoolId: String? {
          get {
            return resultMap["userPoolId"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userPoolId")
          }
        }

        public var arn: String? {
          get {
            return resultMap["arn"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "arn")
          }
        }
      }
    }
  }
}

public final class CheckPasswordStrengthQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query checkPasswordStrength($password: String!) {
      checkPasswordStrength(password: $password) {
        __typename
        valid
        message
      }
    }
    """

  public let operationName: String = "checkPasswordStrength"

  public let operationIdentifier: String? = "d84a6c74c429589a55759d6a9617532387043cc415a9603acae9ad76b315c42f"

  public var password: String

  public init(password: String) {
    self.password = password
  }

  public var variables: GraphQLMap? {
    return ["password": password]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("checkPasswordStrength", arguments: ["password": GraphQLVariable("password")], type: .nonNull(.object(CheckPasswordStrength.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(checkPasswordStrength: CheckPasswordStrength) {
      self.init(unsafeResultMap: ["__typename": "Query", "checkPasswordStrength": checkPasswordStrength.resultMap])
    }

    public var checkPasswordStrength: CheckPasswordStrength {
      get {
        return CheckPasswordStrength(unsafeResultMap: resultMap["checkPasswordStrength"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "checkPasswordStrength")
      }
    }

    public struct CheckPasswordStrength: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CheckPasswordStrengthResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("valid", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("message", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(valid: Bool, message: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "CheckPasswordStrengthResult", "valid": valid, "message": message])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var valid: Bool {
        get {
          return resultMap["valid"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "valid")
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

public final class LoginByEmailMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginByEmail($email: String!, $password: String!, $autoRegister: Boolean, $captchaCode: String, $clientIp: String) {
      loginByEmail(input: {email: $email, password: $password, autoRegister: $autoRegister, captchaCode: $captchaCode, clientIp: $clientIp}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "loginByEmail"

  public let operationIdentifier: String? = "b625a01f406b7d1523fb33c59f7206087f56d8504a3d3d76d605fdf4564d6314"

  public var email: String
  public var password: String
  public var autoRegister: Bool?
  public var captchaCode: String?
  public var clientIp: String?

  public init(email: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil) {
    self.email = email
    self.password = password
    self.autoRegister = autoRegister
    self.captchaCode = captchaCode
    self.clientIp = clientIp
  }

  public var variables: GraphQLMap? {
    return ["email": email, "password": password, "autoRegister": autoRegister, "captchaCode": captchaCode, "clientIp": clientIp]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("loginByEmail", arguments: ["input": ["email": GraphQLVariable("email"), "password": GraphQLVariable("password"), "autoRegister": GraphQLVariable("autoRegister"), "captchaCode": GraphQLVariable("captchaCode"), "clientIp": GraphQLVariable("clientIp")]], type: .object(LoginByEmail.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(loginByEmail: LoginByEmail? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "loginByEmail": loginByEmail.flatMap { (value: LoginByEmail) -> ResultMap in value.resultMap }])
    }

    public var loginByEmail: LoginByEmail? {
      get {
        return (resultMap["loginByEmail"] as? ResultMap).flatMap { LoginByEmail(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "loginByEmail")
      }
    }

    public struct LoginByEmail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class LoginByPhoneCodeMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginByPhoneCode($phone: String!, $code: String!, $clientIp: String) {
      loginByPhoneCode(input: {phone: $phone, code: $code, clientIp: $clientIp}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "loginByPhoneCode"

  public let operationIdentifier: String? = "04a363987e7f18943716ead4855b05de005ed264aa8cb197f82d632f66ac0e5a"

  public var phone: String
  public var code: String
  public var clientIp: String?

  public init(phone: String, code: String, clientIp: String? = nil) {
    self.phone = phone
    self.code = code
    self.clientIp = clientIp
  }

  public var variables: GraphQLMap? {
    return ["phone": phone, "code": code, "clientIp": clientIp]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("loginByPhoneCode", arguments: ["input": ["phone": GraphQLVariable("phone"), "code": GraphQLVariable("code"), "clientIp": GraphQLVariable("clientIp")]], type: .object(LoginByPhoneCode.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(loginByPhoneCode: LoginByPhoneCode? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "loginByPhoneCode": loginByPhoneCode.flatMap { (value: LoginByPhoneCode) -> ResultMap in value.resultMap }])
    }

    public var loginByPhoneCode: LoginByPhoneCode? {
      get {
        return (resultMap["loginByPhoneCode"] as? ResultMap).flatMap { LoginByPhoneCode(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "loginByPhoneCode")
      }
    }

    public struct LoginByPhoneCode: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class LoginByPhonePasswordMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginByPhonePassword($phone: String!, $password: String!, $captchaCode: String, $autoRegister: Boolean, $clientIp: String) {
      loginByPhonePassword(input: {phone: $phone, password: $password, captchaCode: $captchaCode, autoRegister: $autoRegister, clientIp: $clientIp}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "loginByPhonePassword"

  public let operationIdentifier: String? = "3ac302b3e29d83ab28e8b8c2658ef18b95c03f30f41bf52af2718230ca1f3697"

  public var phone: String
  public var password: String
  public var captchaCode: String?
  public var autoRegister: Bool?
  public var clientIp: String?

  public init(phone: String, password: String, captchaCode: String? = nil, autoRegister: Bool? = nil, clientIp: String? = nil) {
    self.phone = phone
    self.password = password
    self.captchaCode = captchaCode
    self.autoRegister = autoRegister
    self.clientIp = clientIp
  }

  public var variables: GraphQLMap? {
    return ["phone": phone, "password": password, "captchaCode": captchaCode, "autoRegister": autoRegister, "clientIp": clientIp]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("loginByPhonePassword", arguments: ["input": ["phone": GraphQLVariable("phone"), "password": GraphQLVariable("password"), "captchaCode": GraphQLVariable("captchaCode"), "autoRegister": GraphQLVariable("autoRegister"), "clientIp": GraphQLVariable("clientIp")]], type: .object(LoginByPhonePassword.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(loginByPhonePassword: LoginByPhonePassword? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "loginByPhonePassword": loginByPhonePassword.flatMap { (value: LoginByPhonePassword) -> ResultMap in value.resultMap }])
    }

    public var loginByPhonePassword: LoginByPhonePassword? {
      get {
        return (resultMap["loginByPhonePassword"] as? ResultMap).flatMap { LoginByPhonePassword(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "loginByPhonePassword")
      }
    }

    public struct LoginByPhonePassword: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class LoginByUsernameMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation loginByUsername($username: String!, $password: String!, $autoRegister: Boolean, $captchaCode: String, $clientIp: String) {
      loginByUsername(input: {username: $username, password: $password, autoRegister: $autoRegister, captchaCode: $captchaCode, clientIp: $clientIp}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "loginByUsername"

  public let operationIdentifier: String? = "3c30c9ec0d0f0a86b2dce1d3f980d4275b661c7ebfeb3a428a1ee0ff93061ef4"

  public var username: String
  public var password: String
  public var autoRegister: Bool?
  public var captchaCode: String?
  public var clientIp: String?

  public init(username: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil) {
    self.username = username
    self.password = password
    self.autoRegister = autoRegister
    self.captchaCode = captchaCode
    self.clientIp = clientIp
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password, "autoRegister": autoRegister, "captchaCode": captchaCode, "clientIp": clientIp]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("loginByUsername", arguments: ["input": ["username": GraphQLVariable("username"), "password": GraphQLVariable("password"), "autoRegister": GraphQLVariable("autoRegister"), "captchaCode": GraphQLVariable("captchaCode"), "clientIp": GraphQLVariable("clientIp")]], type: .object(LoginByUsername.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(loginByUsername: LoginByUsername? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "loginByUsername": loginByUsername.flatMap { (value: LoginByUsername) -> ResultMap in value.resultMap }])
    }

    public var loginByUsername: LoginByUsername? {
      get {
        return (resultMap["loginByUsername"] as? ResultMap).flatMap { LoginByUsername(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "loginByUsername")
      }
    }

    public struct LoginByUsername: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class LogoutMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation logout($id: String, $tokenExpiredAt: String) {
      updateUser(id: $id, input: {tokenExpiredAt: $tokenExpiredAt}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "logout"

  public let operationIdentifier: String? = "35270e469af570103e9d2874bc508a00b586053ed2f8dd0bc9a11f5ca66291d1"

  public var id: String?
  public var tokenExpiredAt: String?

  public init(id: String? = nil, tokenExpiredAt: String? = nil) {
    self.id = id
    self.tokenExpiredAt = tokenExpiredAt
  }

  public var variables: GraphQLMap? {
    return ["id": id, "tokenExpiredAt": tokenExpiredAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateUser", arguments: ["id": GraphQLVariable("id"), "input": ["tokenExpiredAt": GraphQLVariable("tokenExpiredAt")]], type: .nonNull(.object(UpdateUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateUser: UpdateUser) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateUser": updateUser.resultMap])
    }

    /// 更新用户信息。
    public var updateUser: UpdateUser {
      get {
        return UpdateUser(unsafeResultMap: resultMap["updateUser"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class RefreshTokenMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation refreshToken($id: String) {
      refreshToken(id: $id) {
        __typename
        token
        iat
        exp
      }
    }
    """

  public let operationName: String = "refreshToken"

  public let operationIdentifier: String? = "aa056e6349312a1176207c1ffd7e3d143984a5bfab98fb1b37a33e1666b82cfe"

  public var id: String?

  public init(id: String? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("refreshToken", arguments: ["id": GraphQLVariable("id")], type: .object(RefreshToken.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(refreshToken: RefreshToken? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "refreshToken": refreshToken.flatMap { (value: RefreshToken) -> ResultMap in value.resultMap }])
    }

    public var refreshToken: RefreshToken? {
      get {
        return (resultMap["refreshToken"] as? ResultMap).flatMap { RefreshToken(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "refreshToken")
      }
    }

    public struct RefreshToken: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["RefreshToken"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("iat", type: .scalar(Int.self)),
          GraphQLField("exp", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(token: String? = nil, iat: Int? = nil, exp: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "RefreshToken", "token": token, "iat": iat, "exp": exp])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
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

      public var iat: Int? {
        get {
          return resultMap["iat"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "iat")
        }
      }

      public var exp: Int? {
        get {
          return resultMap["exp"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "exp")
        }
      }
    }
  }
}

public final class RegisterByEmailMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation registerByEmail($email: String!, $password: String!, $profile: RegisterProfile, $forceLogin: Boolean, $generateToken: Boolean, $clientIp: String) {
      registerByEmail(input: {email: $email, password: $password, profile: $profile, forceLogin: $forceLogin, generateToken: $generateToken, clientIp: $clientIp}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "registerByEmail"

  public let operationIdentifier: String? = "2efd9af907a23a58ec46da1d1ca9b23d7ede279160cad33553e60e4dbc3f0287"

  public var email: String
  public var password: String
  public var profile: RegisterProfile?
  public var forceLogin: Bool?
  public var generateToken: Bool?
  public var clientIp: String?

  public init(email: String, password: String, profile: RegisterProfile? = nil, forceLogin: Bool? = nil, generateToken: Bool? = nil, clientIp: String? = nil) {
    self.email = email
    self.password = password
    self.profile = profile
    self.forceLogin = forceLogin
    self.generateToken = generateToken
    self.clientIp = clientIp
  }

  public var variables: GraphQLMap? {
    return ["email": email, "password": password, "profile": profile, "forceLogin": forceLogin, "generateToken": generateToken, "clientIp": clientIp]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("registerByEmail", arguments: ["input": ["email": GraphQLVariable("email"), "password": GraphQLVariable("password"), "profile": GraphQLVariable("profile"), "forceLogin": GraphQLVariable("forceLogin"), "generateToken": GraphQLVariable("generateToken"), "clientIp": GraphQLVariable("clientIp")]], type: .object(RegisterByEmail.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(registerByEmail: RegisterByEmail? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "registerByEmail": registerByEmail.flatMap { (value: RegisterByEmail) -> ResultMap in value.resultMap }])
    }

    public var registerByEmail: RegisterByEmail? {
      get {
        return (resultMap["registerByEmail"] as? ResultMap).flatMap { RegisterByEmail(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "registerByEmail")
      }
    }

    public struct RegisterByEmail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class RegisterByPhoneCodeMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation registerByPhoneCode($phone: String!, $code: String!, $password: String, $profile: RegisterProfile, $forceLogin: Boolean, $generateToken: Boolean, $clientIp: String) {
      registerByPhoneCode(input: {phone: $phone, code: $code, password: $password, profile: $profile, forceLogin: $forceLogin, generateToken: $generateToken, clientIp: $clientIp}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "registerByPhoneCode"

  public let operationIdentifier: String? = "affea9c59aec9a7d0f0e52f098bfb68c1c53a02b2e80a3fb848596de5fa977bd"

  public var phone: String
  public var code: String
  public var password: String?
  public var profile: RegisterProfile?
  public var forceLogin: Bool?
  public var generateToken: Bool?
  public var clientIp: String?

  public init(phone: String, code: String, password: String? = nil, profile: RegisterProfile? = nil, forceLogin: Bool? = nil, generateToken: Bool? = nil, clientIp: String? = nil) {
    self.phone = phone
    self.code = code
    self.password = password
    self.profile = profile
    self.forceLogin = forceLogin
    self.generateToken = generateToken
    self.clientIp = clientIp
  }

  public var variables: GraphQLMap? {
    return ["phone": phone, "code": code, "password": password, "profile": profile, "forceLogin": forceLogin, "generateToken": generateToken, "clientIp": clientIp]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("registerByPhoneCode", arguments: ["input": ["phone": GraphQLVariable("phone"), "code": GraphQLVariable("code"), "password": GraphQLVariable("password"), "profile": GraphQLVariable("profile"), "forceLogin": GraphQLVariable("forceLogin"), "generateToken": GraphQLVariable("generateToken"), "clientIp": GraphQLVariable("clientIp")]], type: .object(RegisterByPhoneCode.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(registerByPhoneCode: RegisterByPhoneCode? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "registerByPhoneCode": registerByPhoneCode.flatMap { (value: RegisterByPhoneCode) -> ResultMap in value.resultMap }])
    }

    public var registerByPhoneCode: RegisterByPhoneCode? {
      get {
        return (resultMap["registerByPhoneCode"] as? ResultMap).flatMap { RegisterByPhoneCode(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "registerByPhoneCode")
      }
    }

    public struct RegisterByPhoneCode: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class RegisterByUsernameMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation registerByUsername($username: String!, $password: String!, $profile: RegisterProfile, $forceLogin: Boolean, $generateToken: Boolean, $clientIp: String) {
      registerByUsername(input: {username: $username, password: $password, profile: $profile, forceLogin: $forceLogin, generateToken: $generateToken, clientIp: $clientIp}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "registerByUsername"

  public let operationIdentifier: String? = "5143729935de890390c4040e0d0b677ea58077599e53f0b4b78841856f930e72"

  public var username: String
  public var password: String
  public var profile: RegisterProfile?
  public var forceLogin: Bool?
  public var generateToken: Bool?
  public var clientIp: String?

  public init(username: String, password: String, profile: RegisterProfile? = nil, forceLogin: Bool? = nil, generateToken: Bool? = nil, clientIp: String? = nil) {
    self.username = username
    self.password = password
    self.profile = profile
    self.forceLogin = forceLogin
    self.generateToken = generateToken
    self.clientIp = clientIp
  }

  public var variables: GraphQLMap? {
    return ["username": username, "password": password, "profile": profile, "forceLogin": forceLogin, "generateToken": generateToken, "clientIp": clientIp]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("registerByUsername", arguments: ["input": ["username": GraphQLVariable("username"), "password": GraphQLVariable("password"), "profile": GraphQLVariable("profile"), "forceLogin": GraphQLVariable("forceLogin"), "generateToken": GraphQLVariable("generateToken"), "clientIp": GraphQLVariable("clientIp")]], type: .object(RegisterByUsername.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(registerByUsername: RegisterByUsername? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "registerByUsername": registerByUsername.flatMap { (value: RegisterByUsername) -> ResultMap in value.resultMap }])
    }

    public var registerByUsername: RegisterByUsername? {
      get {
        return (resultMap["registerByUsername"] as? ResultMap).flatMap { RegisterByUsername(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "registerByUsername")
      }
    }

    public struct RegisterByUsername: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class RemoveUdvMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation removeUdv($targetType: UDFTargetType!, $targetId: String!, $key: String!) {
      removeUdv(targetType: $targetType, targetId: $targetId, key: $key) {
        __typename
        key
        dataType
        value
      }
    }
    """

  public let operationName: String = "removeUdv"

  public let operationIdentifier: String? = "9ab8d5ccc7c1b4f891f3e2484780fa5c2ebd891c0c03bfb5fcc5a4b88a49ec66"

  public var targetType: UDFTargetType
  public var targetId: String
  public var key: String

  public init(targetType: UDFTargetType, targetId: String, key: String) {
    self.targetType = targetType
    self.targetId = targetId
    self.key = key
  }

  public var variables: GraphQLMap? {
    return ["targetType": targetType, "targetId": targetId, "key": key]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("removeUdv", arguments: ["targetType": GraphQLVariable("targetType"), "targetId": GraphQLVariable("targetId"), "key": GraphQLVariable("key")], type: .list(.nonNull(.object(RemoveUdv.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(removeUdv: [RemoveUdv]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "removeUdv": removeUdv.flatMap { (value: [RemoveUdv]) -> [ResultMap] in value.map { (value: RemoveUdv) -> ResultMap in value.resultMap } }])
    }

    public var removeUdv: [RemoveUdv]? {
      get {
        return (resultMap["removeUdv"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [RemoveUdv] in value.map { (value: ResultMap) -> RemoveUdv in RemoveUdv(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [RemoveUdv]) -> [ResultMap] in value.map { (value: RemoveUdv) -> ResultMap in value.resultMap } }, forKey: "removeUdv")
      }
    }

    public struct RemoveUdv: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserDefinedData"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("dataType", type: .nonNull(.scalar(UDFDataType.self))),
          GraphQLField("value", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(key: String, dataType: UDFDataType, value: String) {
        self.init(unsafeResultMap: ["__typename": "UserDefinedData", "key": key, "dataType": dataType, "value": value])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var key: String {
        get {
          return resultMap["key"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "key")
        }
      }

      public var dataType: UDFDataType {
        get {
          return resultMap["dataType"]! as! UDFDataType
        }
        set {
          resultMap.updateValue(newValue, forKey: "dataType")
        }
      }

      public var value: String {
        get {
          return resultMap["value"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "value")
        }
      }
    }
  }
}

public final class ResetPasswordMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation resetPassword($phone: String, $email: String, $code: String!, $newPassword: String!) {
      resetPassword(phone: $phone, email: $email, code: $code, newPassword: $newPassword) {
        __typename
        message
        code
      }
    }
    """

  public let operationName: String = "resetPassword"

  public let operationIdentifier: String? = "8db6ef691de391e13b33b31eef86f28ac4bf42b002a32b8e5050117c1096d182"

  public var phone: String?
  public var email: String?
  public var code: String
  public var newPassword: String

  public init(phone: String? = nil, email: String? = nil, code: String, newPassword: String) {
    self.phone = phone
    self.email = email
    self.code = code
    self.newPassword = newPassword
  }

  public var variables: GraphQLMap? {
    return ["phone": phone, "email": email, "code": code, "newPassword": newPassword]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("resetPassword", arguments: ["phone": GraphQLVariable("phone"), "email": GraphQLVariable("email"), "code": GraphQLVariable("code"), "newPassword": GraphQLVariable("newPassword")], type: .object(ResetPassword.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(resetPassword: ResetPassword? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "resetPassword": resetPassword.flatMap { (value: ResetPassword) -> ResultMap in value.resultMap }])
    }

    public var resetPassword: ResetPassword? {
      get {
        return (resultMap["resetPassword"] as? ResultMap).flatMap { ResetPassword(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "resetPassword")
      }
    }

    public struct ResetPassword: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CommonMessage"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("code", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String? = nil, code: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "CommonMessage", "message": message, "code": code])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 可读的接口响应说明，请以业务状态码 code 作为判断业务是否成功的标志
      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      /// 业务状态码（与 HTTP 响应码不同），但且仅当为 200 的时候表示操作成功表示，详细说明请见：
      /// [Authing 错误代码列表](https://docs.authing.co/advanced/error-code.html)
      public var code: Int? {
        get {
          return resultMap["code"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "code")
        }
      }
    }
  }
}

public final class SendEmailMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation sendEmail($email: String!, $scene: EmailScene!) {
      sendEmail(email: $email, scene: $scene) {
        __typename
        message
        code
      }
    }
    """

  public let operationName: String = "sendEmail"

  public let operationIdentifier: String? = "af26b51dcd2ca3e0695aa90c46a8fa7f792d5cf2e72620833fb578c37ccdf885"

  public var email: String
  public var scene: EmailScene

  public init(email: String, scene: EmailScene) {
    self.email = email
    self.scene = scene
  }

  public var variables: GraphQLMap? {
    return ["email": email, "scene": scene]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("sendEmail", arguments: ["email": GraphQLVariable("email"), "scene": GraphQLVariable("scene")], type: .nonNull(.object(SendEmail.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(sendEmail: SendEmail) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "sendEmail": sendEmail.resultMap])
    }

    /// 发送邮件
    public var sendEmail: SendEmail {
      get {
        return SendEmail(unsafeResultMap: resultMap["sendEmail"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "sendEmail")
      }
    }

    public struct SendEmail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CommonMessage"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("code", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(message: String? = nil, code: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "CommonMessage", "message": message, "code": code])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 可读的接口响应说明，请以业务状态码 code 作为判断业务是否成功的标志
      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      /// 业务状态码（与 HTTP 响应码不同），但且仅当为 200 的时候表示操作成功表示，详细说明请见：
      /// [Authing 错误代码列表](https://docs.authing.co/advanced/error-code.html)
      public var code: Int? {
        get {
          return resultMap["code"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "code")
        }
      }
    }
  }
}

public final class SetUdvMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation setUdv($targetType: UDFTargetType!, $targetId: String!, $key: String!, $value: String!) {
      setUdv(targetType: $targetType, targetId: $targetId, key: $key, value: $value) {
        __typename
        key
        dataType
        value
      }
    }
    """

  public let operationName: String = "setUdv"

  public let operationIdentifier: String? = "875c3d79ae526aa3dfbf56b70f67558da4c7481cea7fb8f702de2c47e42d309c"

  public var targetType: UDFTargetType
  public var targetId: String
  public var key: String
  public var value: String

  public init(targetType: UDFTargetType, targetId: String, key: String, value: String) {
    self.targetType = targetType
    self.targetId = targetId
    self.key = key
    self.value = value
  }

  public var variables: GraphQLMap? {
    return ["targetType": targetType, "targetId": targetId, "key": key, "value": value]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("setUdv", arguments: ["targetType": GraphQLVariable("targetType"), "targetId": GraphQLVariable("targetId"), "key": GraphQLVariable("key"), "value": GraphQLVariable("value")], type: .list(.nonNull(.object(SetUdv.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(setUdv: [SetUdv]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "setUdv": setUdv.flatMap { (value: [SetUdv]) -> [ResultMap] in value.map { (value: SetUdv) -> ResultMap in value.resultMap } }])
    }

    public var setUdv: [SetUdv]? {
      get {
        return (resultMap["setUdv"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [SetUdv] in value.map { (value: ResultMap) -> SetUdv in SetUdv(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [SetUdv]) -> [ResultMap] in value.map { (value: SetUdv) -> ResultMap in value.resultMap } }, forKey: "setUdv")
      }
    }

    public struct SetUdv: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserDefinedData"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("dataType", type: .nonNull(.scalar(UDFDataType.self))),
          GraphQLField("value", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(key: String, dataType: UDFDataType, value: String) {
        self.init(unsafeResultMap: ["__typename": "UserDefinedData", "key": key, "dataType": dataType, "value": value])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var key: String {
        get {
          return resultMap["key"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "key")
        }
      }

      public var dataType: UDFDataType {
        get {
          return resultMap["dataType"]! as! UDFDataType
        }
        set {
          resultMap.updateValue(newValue, forKey: "dataType")
        }
      }

      public var value: String {
        get {
          return resultMap["value"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "value")
        }
      }
    }
  }
}

public final class UdvQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query udv($targetType: UDFTargetType!, $targetId: String!) {
      udv(targetType: $targetType, targetId: $targetId) {
        __typename
        key
        dataType
        value
      }
    }
    """

  public let operationName: String = "udv"

  public let operationIdentifier: String? = "5d25997ccd7c3bc6ce4b7a8c11fb7f25d36b4d05e89d4d63b4a7807ba185f6b0"

  public var targetType: UDFTargetType
  public var targetId: String

  public init(targetType: UDFTargetType, targetId: String) {
    self.targetType = targetType
    self.targetId = targetId
  }

  public var variables: GraphQLMap? {
    return ["targetType": targetType, "targetId": targetId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("udv", arguments: ["targetType": GraphQLVariable("targetType"), "targetId": GraphQLVariable("targetId")], type: .nonNull(.list(.nonNull(.object(Udv.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(udv: [Udv]) {
      self.init(unsafeResultMap: ["__typename": "Query", "udv": udv.map { (value: Udv) -> ResultMap in value.resultMap }])
    }

    /// 查询某个实体定义的自定义数据
    public var udv: [Udv] {
      get {
        return (resultMap["udv"] as! [ResultMap]).map { (value: ResultMap) -> Udv in Udv(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Udv) -> ResultMap in value.resultMap }, forKey: "udv")
      }
    }

    public struct Udv: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["UserDefinedData"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("key", type: .nonNull(.scalar(String.self))),
          GraphQLField("dataType", type: .nonNull(.scalar(UDFDataType.self))),
          GraphQLField("value", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(key: String, dataType: UDFDataType, value: String) {
        self.init(unsafeResultMap: ["__typename": "UserDefinedData", "key": key, "dataType": dataType, "value": value])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var key: String {
        get {
          return resultMap["key"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "key")
        }
      }

      public var dataType: UDFDataType {
        get {
          return resultMap["dataType"]! as! UDFDataType
        }
        set {
          resultMap.updateValue(newValue, forKey: "dataType")
        }
      }

      public var value: String {
        get {
          return resultMap["value"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "value")
        }
      }
    }
  }
}

public final class UnbindEmailMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation unbindEmail {
      unbindEmail {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "unbindEmail"

  public let operationIdentifier: String? = "0f89367868251c711ab3cd5a265d384a8c43415e982a69835524dd534c0760ad"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("unbindEmail", type: .nonNull(.object(UnbindEmail.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(unbindEmail: UnbindEmail) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "unbindEmail": unbindEmail.resultMap])
    }

    /// 解绑定邮箱
    public var unbindEmail: UnbindEmail {
      get {
        return UnbindEmail(unsafeResultMap: resultMap["unbindEmail"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "unbindEmail")
      }
    }

    public struct UnbindEmail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UnbindPhoneMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation unbindPhone {
      unbindPhone {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "unbindPhone"

  public let operationIdentifier: String? = "f95432af9d367fe13db4fea8b2abdce1826be55b5381004ae360897e97e3d119"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("unbindPhone", type: .nonNull(.object(UnbindPhone.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(unbindPhone: UnbindPhone) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "unbindPhone": unbindPhone.resultMap])
    }

    /// 解绑定手机号，调用此接口需要当前用户已绑定手机号并且绑定了其他登录方式
    public var unbindPhone: UnbindPhone {
      get {
        return UnbindPhone(unsafeResultMap: resultMap["unbindPhone"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "unbindPhone")
      }
    }

    public struct UnbindPhone: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateEmailMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updateEmail($email: String!, $emailCode: String!, $oldEmail: String, $oldEmailCode: String) {
      updateEmail(email: $email, emailCode: $emailCode, oldEmail: $oldEmail, oldEmailCode: $oldEmailCode) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "updateEmail"

  public let operationIdentifier: String? = "e110ddc1772ef2a5e2efd1369e9d1a643d7886dc56f64aa2cc31d2098951bbec"

  public var email: String
  public var emailCode: String
  public var oldEmail: String?
  public var oldEmailCode: String?

  public init(email: String, emailCode: String, oldEmail: String? = nil, oldEmailCode: String? = nil) {
    self.email = email
    self.emailCode = emailCode
    self.oldEmail = oldEmail
    self.oldEmailCode = oldEmailCode
  }

  public var variables: GraphQLMap? {
    return ["email": email, "emailCode": emailCode, "oldEmail": oldEmail, "oldEmailCode": oldEmailCode]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateEmail", arguments: ["email": GraphQLVariable("email"), "emailCode": GraphQLVariable("emailCode"), "oldEmail": GraphQLVariable("oldEmail"), "oldEmailCode": GraphQLVariable("oldEmailCode")], type: .nonNull(.object(UpdateEmail.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateEmail: UpdateEmail) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateEmail": updateEmail.resultMap])
    }

    /// 修改邮箱。此接口需要验证邮箱验证码，管理员直接修改请使用 updateUser 接口。
    public var updateEmail: UpdateEmail {
      get {
        return UpdateEmail(unsafeResultMap: resultMap["updateEmail"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateEmail")
      }
    }

    public struct UpdateEmail: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdatePasswordMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updatePassword($newPassword: String!, $oldPassword: String) {
      updatePassword(newPassword: $newPassword, oldPassword: $oldPassword) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "updatePassword"

  public let operationIdentifier: String? = "c508b8b3a5670bf796f5b47746baeb3ae9db1631f340a63346adf2d0f1b78068"

  public var newPassword: String
  public var oldPassword: String?

  public init(newPassword: String, oldPassword: String? = nil) {
    self.newPassword = newPassword
    self.oldPassword = oldPassword
  }

  public var variables: GraphQLMap? {
    return ["newPassword": newPassword, "oldPassword": oldPassword]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updatePassword", arguments: ["newPassword": GraphQLVariable("newPassword"), "oldPassword": GraphQLVariable("oldPassword")], type: .nonNull(.object(UpdatePassword.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updatePassword: UpdatePassword) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updatePassword": updatePassword.resultMap])
    }

    /// 修改用户密码，此接口需要验证原始密码，管理员直接修改请使用 **updateUser** 接口。
    public var updatePassword: UpdatePassword {
      get {
        return UpdatePassword(unsafeResultMap: resultMap["updatePassword"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updatePassword")
      }
    }

    public struct UpdatePassword: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdatePhoneMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updatePhone($phone: String!, $phoneCode: String!, $oldPhone: String, $oldPhoneCode: String) {
      updatePhone(phone: $phone, phoneCode: $phoneCode, oldPhone: $oldPhone, oldPhoneCode: $oldPhoneCode) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "updatePhone"

  public let operationIdentifier: String? = "67fedd4299823008cb8ba2306fed2ea136e5f14c47a0555c1354db4fbba0d38e"

  public var phone: String
  public var phoneCode: String
  public var oldPhone: String?
  public var oldPhoneCode: String?

  public init(phone: String, phoneCode: String, oldPhone: String? = nil, oldPhoneCode: String? = nil) {
    self.phone = phone
    self.phoneCode = phoneCode
    self.oldPhone = oldPhone
    self.oldPhoneCode = oldPhoneCode
  }

  public var variables: GraphQLMap? {
    return ["phone": phone, "phoneCode": phoneCode, "oldPhone": oldPhone, "oldPhoneCode": oldPhoneCode]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updatePhone", arguments: ["phone": GraphQLVariable("phone"), "phoneCode": GraphQLVariable("phoneCode"), "oldPhone": GraphQLVariable("oldPhone"), "oldPhoneCode": GraphQLVariable("oldPhoneCode")], type: .nonNull(.object(UpdatePhone.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updatePhone: UpdatePhone) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updatePhone": updatePhone.resultMap])
    }

    /// 修改手机号。此接口需要验证手机号验证码，管理员直接修改请使用 **updateUser** 接口。
    public var updatePhone: UpdatePhone {
      get {
        return UpdatePhone(unsafeResultMap: resultMap["updatePhone"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updatePhone")
      }
    }

    public struct UpdatePhone: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updateUser($id: String, $username: String, $nickname: String, $photo: String, $company: String, $browser: String, $device: String, $lastIP: String, $name: String, $givenName: String, $familyName: String, $middleName: String, $profile: String, $preferredUsername: String, $website: String, $gender: String, $birthdate: String, $zoneinfo: String, $locale: String, $address: String, $streetAddress: String, $locality: String, $region: String, $postalCode: String, $city: String, $province: String, $country: String) {
      updateUser(id: $id, input: {username: $username, nickname: $nickname, photo: $photo, company: $company, browser: $browser, device: $device, lastIP: $lastIP, name: $name, givenName: $givenName, familyName: $familyName, middleName: $middleName, profile: $profile, preferredUsername: $preferredUsername, website: $website, gender: $gender, birthdate: $birthdate, zoneinfo: $zoneinfo, locale: $locale, address: $address, streetAddress: $streetAddress, locality: $locality, region: $region, postalCode: $postalCode, city: $city, province: $province, country: $country}) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "updateUser"

  public let operationIdentifier: String? = "9dcfe31221529e69eebe8f964f72a31c24f8742cef1cd70f03f741a16060a287"

  public var id: String?
  public var username: String?
  public var nickname: String?
  public var photo: String?
  public var company: String?
  public var browser: String?
  public var device: String?
  public var lastIP: String?
  public var name: String?
  public var givenName: String?
  public var familyName: String?
  public var middleName: String?
  public var profile: String?
  public var preferredUsername: String?
  public var website: String?
  public var gender: String?
  public var birthdate: String?
  public var zoneinfo: String?
  public var locale: String?
  public var address: String?
  public var streetAddress: String?
  public var locality: String?
  public var region: String?
  public var postalCode: String?
  public var city: String?
  public var province: String?
  public var country: String?

  public init(id: String? = nil, username: String? = nil, nickname: String? = nil, photo: String? = nil, company: String? = nil, browser: String? = nil, device: String? = nil, lastIP: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil) {
    self.id = id
    self.username = username
    self.nickname = nickname
    self.photo = photo
    self.company = company
    self.browser = browser
    self.device = device
    self.lastIP = lastIP
    self.name = name
    self.givenName = givenName
    self.familyName = familyName
    self.middleName = middleName
    self.profile = profile
    self.preferredUsername = preferredUsername
    self.website = website
    self.gender = gender
    self.birthdate = birthdate
    self.zoneinfo = zoneinfo
    self.locale = locale
    self.address = address
    self.streetAddress = streetAddress
    self.locality = locality
    self.region = region
    self.postalCode = postalCode
    self.city = city
    self.province = province
    self.country = country
  }

  public var variables: GraphQLMap? {
    return ["id": id, "username": username, "nickname": nickname, "photo": photo, "company": company, "browser": browser, "device": device, "lastIP": lastIP, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateUser", arguments: ["id": GraphQLVariable("id"), "input": ["username": GraphQLVariable("username"), "nickname": GraphQLVariable("nickname"), "photo": GraphQLVariable("photo"), "company": GraphQLVariable("company"), "browser": GraphQLVariable("browser"), "device": GraphQLVariable("device"), "lastIP": GraphQLVariable("lastIP"), "name": GraphQLVariable("name"), "givenName": GraphQLVariable("givenName"), "familyName": GraphQLVariable("familyName"), "middleName": GraphQLVariable("middleName"), "profile": GraphQLVariable("profile"), "preferredUsername": GraphQLVariable("preferredUsername"), "website": GraphQLVariable("website"), "gender": GraphQLVariable("gender"), "birthdate": GraphQLVariable("birthdate"), "zoneinfo": GraphQLVariable("zoneinfo"), "locale": GraphQLVariable("locale"), "address": GraphQLVariable("address"), "streetAddress": GraphQLVariable("streetAddress"), "locality": GraphQLVariable("locality"), "region": GraphQLVariable("region"), "postalCode": GraphQLVariable("postalCode"), "city": GraphQLVariable("city"), "province": GraphQLVariable("province"), "country": GraphQLVariable("country")]], type: .nonNull(.object(UpdateUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateUser: UpdateUser) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateUser": updateUser.resultMap])
    }

    /// 更新用户信息。
    public var updateUser: UpdateUser {
      get {
        return UpdateUser(unsafeResultMap: resultMap["updateUser"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query user($id: String) {
      user(id: $id) {
        __typename
        id
        arn
        userPoolId
        username
        email
        emailVerified
        phone
        phoneVerified
        unionid
        openid
        nickname
        registerSource
        photo
        password
        oauth
        token
        tokenExpiredAt
        loginsCount
        lastLogin
        lastIP
        signedUp
        blocked
        isDeleted
        device
        browser
        company
        name
        givenName
        familyName
        middleName
        profile
        preferredUsername
        website
        gender
        birthdate
        zoneinfo
        locale
        address
        formatted
        streetAddress
        locality
        region
        postalCode
        city
        province
        country
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "user"

  public let operationIdentifier: String? = "04ac60caec2def505ac44a1d2f676266364d5f6171ce7f776fe880f0ea90291f"

  public var id: String?

  public init(id: String? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("user", arguments: ["id": GraphQLVariable("id")], type: .object(User.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(user: User? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }])
    }

    public var user: User? {
      get {
        return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "user")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("arn", type: .nonNull(.scalar(String.self))),
          GraphQLField("userPoolId", type: .nonNull(.scalar(String.self))),
          GraphQLField("username", type: .scalar(String.self)),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("emailVerified", type: .scalar(Bool.self)),
          GraphQLField("phone", type: .scalar(String.self)),
          GraphQLField("phoneVerified", type: .scalar(Bool.self)),
          GraphQLField("unionid", type: .scalar(String.self)),
          GraphQLField("openid", type: .scalar(String.self)),
          GraphQLField("nickname", type: .scalar(String.self)),
          GraphQLField("registerSource", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
          GraphQLField("photo", type: .scalar(String.self)),
          GraphQLField("password", type: .scalar(String.self)),
          GraphQLField("oauth", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
          GraphQLField("tokenExpiredAt", type: .scalar(String.self)),
          GraphQLField("loginsCount", type: .scalar(Int.self)),
          GraphQLField("lastLogin", type: .scalar(String.self)),
          GraphQLField("lastIP", type: .scalar(String.self)),
          GraphQLField("signedUp", type: .scalar(String.self)),
          GraphQLField("blocked", type: .scalar(Bool.self)),
          GraphQLField("isDeleted", type: .scalar(Bool.self)),
          GraphQLField("device", type: .scalar(String.self)),
          GraphQLField("browser", type: .scalar(String.self)),
          GraphQLField("company", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("givenName", type: .scalar(String.self)),
          GraphQLField("familyName", type: .scalar(String.self)),
          GraphQLField("middleName", type: .scalar(String.self)),
          GraphQLField("profile", type: .scalar(String.self)),
          GraphQLField("preferredUsername", type: .scalar(String.self)),
          GraphQLField("website", type: .scalar(String.self)),
          GraphQLField("gender", type: .scalar(String.self)),
          GraphQLField("birthdate", type: .scalar(String.self)),
          GraphQLField("zoneinfo", type: .scalar(String.self)),
          GraphQLField("locale", type: .scalar(String.self)),
          GraphQLField("address", type: .scalar(String.self)),
          GraphQLField("formatted", type: .scalar(String.self)),
          GraphQLField("streetAddress", type: .scalar(String.self)),
          GraphQLField("locality", type: .scalar(String.self)),
          GraphQLField("region", type: .scalar(String.self)),
          GraphQLField("postalCode", type: .scalar(String.self)),
          GraphQLField("city", type: .scalar(String.self)),
          GraphQLField("province", type: .scalar(String.self)),
          GraphQLField("country", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .scalar(String.self)),
          GraphQLField("updatedAt", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, arn: String, userPoolId: String, username: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phone: String? = nil, phoneVerified: Bool? = nil, unionid: String? = nil, openid: String? = nil, nickname: String? = nil, registerSource: [String], photo: String? = nil, password: String? = nil, oauth: String? = nil, token: String? = nil, tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, signedUp: String? = nil, blocked: Bool? = nil, isDeleted: Bool? = nil, device: String? = nil, browser: String? = nil, company: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, formatted: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "arn": arn, "userPoolId": userPoolId, "username": username, "email": email, "emailVerified": emailVerified, "phone": phone, "phoneVerified": phoneVerified, "unionid": unionid, "openid": openid, "nickname": nickname, "registerSource": registerSource, "photo": photo, "password": password, "oauth": oauth, "token": token, "tokenExpiredAt": tokenExpiredAt, "loginsCount": loginsCount, "lastLogin": lastLogin, "lastIP": lastIp, "signedUp": signedUp, "blocked": blocked, "isDeleted": isDeleted, "device": device, "browser": browser, "company": company, "name": name, "givenName": givenName, "familyName": familyName, "middleName": middleName, "profile": profile, "preferredUsername": preferredUsername, "website": website, "gender": gender, "birthdate": birthdate, "zoneinfo": zoneinfo, "locale": locale, "address": address, "formatted": formatted, "streetAddress": streetAddress, "locality": locality, "region": region, "postalCode": postalCode, "city": city, "province": province, "country": country, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// 用户 ID
      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var arn: String {
        get {
          return resultMap["arn"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "arn")
        }
      }

      /// 用户池 ID
      public var userPoolId: String {
        get {
          return resultMap["userPoolId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userPoolId")
        }
      }

      /// 用户名，用户池内唯一
      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      /// 邮箱，用户池内唯一
      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      /// 邮箱是否已验证
      public var emailVerified: Bool? {
        get {
          return resultMap["emailVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "emailVerified")
        }
      }

      /// 手机号，用户池内唯一
      public var phone: String? {
        get {
          return resultMap["phone"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "phone")
        }
      }

      /// 手机号是否已验证
      public var phoneVerified: Bool? {
        get {
          return resultMap["phoneVerified"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "phoneVerified")
        }
      }

      public var unionid: String? {
        get {
          return resultMap["unionid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "unionid")
        }
      }

      public var openid: String? {
        get {
          return resultMap["openid"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openid")
        }
      }

      /// 昵称，该字段不唯一。
      public var nickname: String? {
        get {
          return resultMap["nickname"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "nickname")
        }
      }

      /// 注册方式
      public var registerSource: [String] {
        get {
          return resultMap["registerSource"]! as! [String]
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerSource")
        }
      }

      /// 头像链接，默认为 https://usercontents.authing.cn/authing-avatar.png
      public var photo: String? {
        get {
          return resultMap["photo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "photo")
        }
      }

      /// 用户密码，数据库使用密钥加 salt 进行加密，非原文密码。
      public var password: String? {
        get {
          return resultMap["password"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "password")
        }
      }

      /// 用户社会化登录第三方身份提供商返回的原始用户信息，非社会化登录方式注册的用户此字段为空。
      public var oauth: String? {
        get {
          return resultMap["oauth"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "oauth")
        }
      }

      /// 用户登录凭证，开发者可以在后端检验该 token 的合法性，从而验证用户身份。详细文档请见：[验证 Token](https://docs.authing.co/advanced/verify-jwt-token.html)
      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      /// token 过期时间
      public var tokenExpiredAt: String? {
        get {
          return resultMap["tokenExpiredAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "tokenExpiredAt")
        }
      }

      /// 用户登录总次数
      public var loginsCount: Int? {
        get {
          return resultMap["loginsCount"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "loginsCount")
        }
      }

      /// 用户最近一次登录时间
      public var lastLogin: String? {
        get {
          return resultMap["lastLogin"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastLogin")
        }
      }

      /// 用户上一次登录时使用的 IP
      public var lastIp: String? {
        get {
          return resultMap["lastIP"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastIP")
        }
      }

      /// 用户注册时间
      public var signedUp: String? {
        get {
          return resultMap["signedUp"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "signedUp")
        }
      }

      /// 该账号是否被禁用
      public var blocked: Bool? {
        get {
          return resultMap["blocked"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "blocked")
        }
      }

      /// 账号是否被软删除
      public var isDeleted: Bool? {
        get {
          return resultMap["isDeleted"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isDeleted")
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

      public var browser: String? {
        get {
          return resultMap["browser"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "browser")
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

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var givenName: String? {
        get {
          return resultMap["givenName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "givenName")
        }
      }

      public var familyName: String? {
        get {
          return resultMap["familyName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "familyName")
        }
      }

      public var middleName: String? {
        get {
          return resultMap["middleName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "middleName")
        }
      }

      public var profile: String? {
        get {
          return resultMap["profile"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profile")
        }
      }

      public var preferredUsername: String? {
        get {
          return resultMap["preferredUsername"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "preferredUsername")
        }
      }

      public var website: String? {
        get {
          return resultMap["website"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "website")
        }
      }

      public var gender: String? {
        get {
          return resultMap["gender"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "gender")
        }
      }

      public var birthdate: String? {
        get {
          return resultMap["birthdate"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "birthdate")
        }
      }

      public var zoneinfo: String? {
        get {
          return resultMap["zoneinfo"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "zoneinfo")
        }
      }

      public var locale: String? {
        get {
          return resultMap["locale"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locale")
        }
      }

      public var address: String? {
        get {
          return resultMap["address"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "address")
        }
      }

      public var formatted: String? {
        get {
          return resultMap["formatted"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "formatted")
        }
      }

      public var streetAddress: String? {
        get {
          return resultMap["streetAddress"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streetAddress")
        }
      }

      public var locality: String? {
        get {
          return resultMap["locality"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "locality")
        }
      }

      public var region: String? {
        get {
          return resultMap["region"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "region")
        }
      }

      public var postalCode: String? {
        get {
          return resultMap["postalCode"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "postalCode")
        }
      }

      public var city: String? {
        get {
          return resultMap["city"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "city")
        }
      }

      public var province: String? {
        get {
          return resultMap["province"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "province")
        }
      }

      public var country: String? {
        get {
          return resultMap["country"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "country")
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

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}
