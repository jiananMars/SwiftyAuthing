//
//  AuthenticationClient.swift
//  SwiftyAuthing
//
//  Created by Eric Woo on 2020/10/27.
//
//  Reference-1 https://core.authing.cn/graphql/v2
//  Reference-2 https://github.com/Authing/authing.js/blob/master/src/lib/authentication/AuthenticationClient.ts
//

import Apollo
import Alamofire
import Foundation

public class AuthenticationClient {
    
    /// UserPoolId: The user pool id.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
    public var userPoolId: String?
    
    /// Host: The host of User Pool.
    ///
    public var host: String?
    
    /// AppId: The App ID.
    ///
    public var appId: String?
    
    /// Domain: The private domain.
    ///
    public var domain: String = Config.domainDefault
    
    /// AccessToken: The AccessToken of user.
    ///
    private var _token: String?
    public var token: String? {
        get {
            return self._token
        }
        set {
            self.setToken(newValue ?? "")
            self._token = newValue
        }
    }
    
    public var userDetaultsToken: String?
    {
        get
        {
            let udToken = self.token ?? UserDefaults.standard.string(forKey: Config.keyAccessToken)
            return udToken
        }
    }
    
    /// Remove AccessToken.
    /// 清空用户的 AccessToken
    /// - returns: N/A
    ///
    /// 清空用户的 AccessToken
    ///
    public func removeAccessToken() {
        self.token = ""
        UserDefaults.standard.setValue("", forKey: Config.keyAccessToken)
    }
    
    /// Set AccessToken.
    /// 设置用户的 AccessToken
    /// - parameter token: 用户的 AccessToken
    /// - returns: N/A
    ///
    /// 设置用户的 AccessToken
    ///
    public func setToken(_ token: String) {
        self._token = token
        
//        Config.keyHeaders.add(name: Config.authorizationHeader, value: token)
//        Config.keyHeade
        var headers = Config.keyHeaders
        
        if headers.dictionary.keys.contains(Config.authorizationHeader)
        {
            headers.update(name: Config.authorizationHeader, value: token)
        }
        else
        {
            headers.add(name: Config.authorizationHeader , value: token)
        }
        
        Config.keyHeaders = headers
        
        UserDefaults.standard.setValue(token, forKey: Config.keyAccessToken)
    }
    
    private var _cachePolicy: CachePolicy?
    public var cachePolicy: CachePolicy? {
        get {
            return self._cachePolicy
        }
        set {
            self._cachePolicy = newValue
        }
    }
    
    /// Init with UserPoolId
    /// userPoolId: The user pool Id.
    /// appId: The App ID.
    /// Find in https://console.authing.cn Setting - Basic Information & Application.
    ///
    public init(userPoolId: String, appId: String) {
        self.userPoolId = userPoolId
        self.appId = appId
        Config.keyAppId = appId
        
        let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        let allLanguages: [String] = UserDefaults.standard.object(forKey: "AppleLanguages") as! [String]
        let chooseLanguage = allLanguages.first
        
        let headers: HTTPHeaders = [
            "x-authing-app-id": appId,
            "x-authing-request-from": "sdk",
            "x-authing-sdk-version": currentVersion,
            "x-authing-lang": (chooseLanguage == "en") ? "en-US" : "zh-CN"
        ]
        
        Config.keyHeaders = headers
        
        UserDefaults.standard.setValue(userPoolId, forKey: Config.keyUserPoolId)
        UserDefaults.standard.setValue(appId, forKey: Config.keyAppId)
    }
    
    /// Init with UserPoolId
    /// userPoolId: The user pool Id.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
    public init(userPoolId: String) {
        self.userPoolId = userPoolId
        
        let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        let allLanguages: [String] = UserDefaults.standard.object(forKey: "AppleLanguages") as! [String]
        let chooseLanguage = allLanguages.first
        
        let headers: HTTPHeaders = [
            "x-authing-request-from": "sdk",
            "x-authing-sdk-version": currentVersion,
            "x-authing-lang": (chooseLanguage == "en") ? "en-US" : "zh-CN"
        ]
        
        Config.keyHeaders = headers
        
        UserDefaults.standard.setValue(userPoolId, forKey: Config.keyUserPoolId)
    }
    
    /// Init with UserPoolId and Host
    /// userPoolId: The user pool Id.
    /// host: The host of user pool.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
    public init(userPoolId: String, host: String) {
        self.userPoolId = userPoolId
        self.host = host
        Network.shared.host = host
        
        let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        let allLanguages: [String] = UserDefaults.standard.object(forKey: "AppleLanguages") as! [String]
        let chooseLanguage = allLanguages.first
        
        let headers: HTTPHeaders = [
            "x-authing-request-from": "sdk",
            "x-authing-sdk-version": currentVersion,
            "x-authing-lang": (chooseLanguage == "en") ? "en-US" : "zh-CN"
        ]
        
        Config.keyHeaders = headers
        
        UserDefaults.standard.setValue(userPoolId, forKey: Config.keyUserPoolId)
    }
    
    /// Init with UserPoolId
    /// userPoolId: The user pool Id.
    /// appId: The App ID.
    /// Find in https://console.authing.cn Setting - Basic Information & Application.
    ///
    public init(userPoolId: String, appId: String, domain: String) {
        self.userPoolId = userPoolId
        self.appId = appId
        UserDefaults.standard.setValue(userPoolId, forKey: Config.keyUserPoolId)
        UserDefaults.standard.setValue(appId, forKey: Config.keyAppId)
        
        Config.keyAppId = appId
        
        let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        let allLanguages: [String] = UserDefaults.standard.object(forKey: "AppleLanguages") as! [String]
        let chooseLanguage = allLanguages.first
        
        let headers: HTTPHeaders = [
            "x-authing-app-id": appId,
            "x-authing-request-from": "sdk",
            "x-authing-sdk-version": currentVersion,
            "x-authing-lang": (chooseLanguage == "en") ? "en-US" : "zh-CN"
        ]
        
        Config.keyHeaders = headers
        
        let host = Config.getHost(domain: domain)
        self.domain = domain
        self.host = host
        Network.shared.host = host
        UserDefaults.standard.setValue(domain, forKey: Config.keyDomain)
    }
    
    
    /// Update Profile.
    /// 修改用户资料
    /// - parameter username: 用户名
    /// - parameter nickname: 昵称
    /// - parameter photo: 头像
    /// - parameter company: 公司
    /// - parameter browser: 浏览器
    /// - parameter device: 设备
    /// - parameter lastIP: 最近登录的 IP
    /// - parameter name: Name
    /// - parameter givenName: Given Name
    /// - parameter familyName: Family Name
    /// - parameter middleName: Middle Name
    /// - parameter profile: Profile Url
    /// - parameter preferredUsername: Preferred Name
    /// - parameter website: 个人网站
    /// - parameter gender: 性别, F 表示男性、W 表示女性、未知表示 U
    /// - parameter birthdate: 生日
    /// - parameter zoneinfo: 时区
    /// - parameter locale: 语言
    /// - parameter address: 地址
    /// - parameter streetAddress: 街道地址
    /// - parameter locality: Locality
    /// - parameter region: 地域
    /// - parameter postalCode: 邮编
    /// - parameter city: 城市
    /// - parameter province: 省份
    /// - parameter country: 国家
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 修改用户资料，此接口不能用于修改手机号、邮箱、密码，如果需要请调用 updatePhone、updateEmail、updatePassword 接口。
    ///
    public func updateProfile(email: String? = nil, unionid: String? = nil, openid: String? = nil, emailVerified: Bool? = nil, phone: String? = nil,phoneVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, password: String? = nil, photo: String? = nil, company: String? = nil, browser: String? = nil, device: String? = nil, oauth: String? = nil,tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, blocked: Bool? = nil, name: String? = nil,givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil,preferredUsername: String? = nil, website: String? = nil,gender: String? = nil,birthdate: String? = nil,zoneinfo: String? = nil, locale: String? = nil,address: String? = nil, formatted: String? = nil,streetAddress: String? = nil, locality: String? = nil,region: String? = nil, postalCode: String? = nil,city: String? = nil, province: String? = nil,country: String? = nil, externalId: String? = nil,completion: @escaping ((GraphQLResult<UpdateUserMutation.Data>) -> Void)) {
        let id = self.getUserId()
        self.getCurrentUser(completion: {status in
            if(status.errors == nil) {
                //Success
                let u = status.data?.user

                let _email = (email != nil) ? email : u?.email
                let _unionid = (unionid != nil) ? unionid : u?.unionid
                let _openid = (openid != nil) ? openid : u?.openid
                let _emailVerified = (emailVerified != nil) ? emailVerified : u?.emailVerified
                let _phone = (phone != nil) ? phone : u?.phone
                let _phoneVerified = (phoneVerified != nil) ? phoneVerified : u?.phoneVerified
                let _username = (username != nil) ? username : u?.username
                let _nickname = (nickname != nil) ? nickname : u?.nickname
                let _password = (password != nil) ? password : u?.password
                let _photo = (photo != nil) ? photo : u?.photo
                let _company = (company != nil) ? company : u?.company
                let _browser = (browser != nil) ? browser : u?.browser
                let _device = (device != nil) ? device : u?.device
                let _oauth = (oauth != nil) ? oauth : u?.oauth
                let _tokenExpiredAt = (tokenExpiredAt != nil) ? tokenExpiredAt : u?.tokenExpiredAt
                let _loginsCount = (loginsCount != nil) ? loginsCount : u?.loginsCount
                let _lastLogin = (lastLogin != nil) ? lastLogin : u?.lastLogin
                let _lastIp = (lastIp != nil) ? lastIp : u?.lastIp
                let _blocked = (blocked != nil) ? blocked : u?.blocked
                let _name = (name != nil) ? name : u?.name
                let _givenName = (givenName != nil) ? givenName : u?.givenName
                let _familyName = (familyName != nil) ? familyName : u?.familyName
                let _middleName = (middleName != nil) ? middleName : u?.middleName
                let _profile = (profile != nil) ? profile : u?.profile
                let _preferredUsername = (preferredUsername != nil) ? preferredUsername : u?.preferredUsername
                let _website = (website != nil) ? website : u?.website
                let _gender = (gender != nil) ? gender : u?.gender
                let _birthdate = (birthdate != nil) ? birthdate : u?.birthdate
                let _zoneinfo = (zoneinfo != nil) ? zoneinfo : u?.zoneinfo
                let _locale = (locale != nil) ? locale : u?.locale
                let _address = (address != nil) ? address : u?.address
                let _formatted = (formatted != nil) ? formatted : u?.formatted
                let _streetAddress = (streetAddress != nil) ? streetAddress : u?.streetAddress
                let _locality = (locality != nil) ? locality : u?.locality
                let _region = (region != nil) ? region : u?.region
                let _postalCode = (postalCode != nil) ? postalCode : u?.postalCode
                let _city = (city != nil) ? city : u?.city
                let _province = (province != nil) ? province : u?.province
                let _country = (country != nil) ? country : u?.country
                let _externalId = (externalId != nil) ? externalId : u?.externalId
                
                Network.shared.apollo.perform(mutation: UpdateUserMutation(input: UpdateUserInput(email: _email, unionid: _unionid, openid: _openid, emailVerified: _emailVerified, phone: _phone, phoneVerified: _phoneVerified, username: _username, nickname: _nickname, password: _password, photo: _photo, company: _company, browser: _browser, device: _device, oauth: _oauth, tokenExpiredAt: _tokenExpiredAt, loginsCount: _loginsCount, lastLogin: _lastLogin, lastIp: _lastIp, blocked: _blocked, name: _name, givenName: _givenName, familyName: _familyName, middleName: _middleName, profile: _profile, preferredUsername: _preferredUsername, website: _website, gender: _gender, birthdate: _birthdate, zoneinfo: _zoneinfo, locale: _locale, address: _address, formatted: _formatted, streetAddress: _streetAddress, locality: _locality, region: _region, postalCode: _postalCode, city: _city, province: _province, country: _country, externalId: _externalId)), queue: DispatchQueue.main) { result in
                    switch result {
                    case .failure(let error):
                        print("Failure: \(error)")
                    case .success(let graphQLResult):
                        completion(graphQLResult)
                    }
                }
            } else {
                print(status.errors ?? "")
            }
        })
    }
    
    /// Update Profile.
    /// 修改用户资料
    /// - parameter username: 用户名
    /// - parameter nickname: 昵称
    /// - parameter photo: 头像
    /// - parameter company: 公司
    /// - parameter browser: 浏览器
    /// - parameter device: 设备
    /// - parameter lastIP: 最近登录的 IP
    /// - parameter name: Name
    /// - parameter givenName: Given Name
    /// - parameter familyName: Family Name
    /// - parameter middleName: Middle Name
    /// - parameter profile: Profile Url
    /// - parameter preferredUsername: Preferred Name
    /// - parameter website: 个人网站
    /// - parameter gender: 性别, F 表示男性、W 表示女性、未知表示 U
    /// - parameter birthdate: 生日
    /// - parameter zoneinfo: 时区
    /// - parameter locale: 语言
    /// - parameter address: 地址
    /// - parameter streetAddress: 街道地址
    /// - parameter locality: Locality
    /// - parameter region: 地域
    /// - parameter postalCode: 邮编
    /// - parameter city: 城市
    /// - parameter province: 省份
    /// - parameter country: 国家
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 修改用户资料，此接口不能用于修改手机号、邮箱、密码，如果需要请调用 updatePhone、updateEmail、updatePassword 接口。
    ///
    public func updateProfileWithResult(email: String? = nil, unionid: String? = nil, openid: String? = nil, emailVerified: Bool? = nil, phone: String? = nil,phoneVerified: Bool? = nil, username: String? = nil, nickname: String? = nil, password: String? = nil, photo: String? = nil, company: String? = nil, browser: String? = nil, device: String? = nil, oauth: String? = nil,tokenExpiredAt: String? = nil, loginsCount: Int? = nil, lastLogin: String? = nil, lastIp: String? = nil, blocked: Bool? = nil, name: String? = nil,givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil,preferredUsername: String? = nil, website: String? = nil,gender: String? = nil,birthdate: String? = nil,zoneinfo: String? = nil, locale: String? = nil,address: String? = nil, formatted: String? = nil,streetAddress: String? = nil, locality: String? = nil,region: String? = nil, postalCode: String? = nil,city: String? = nil, province: String? = nil,country: String? = nil, externalId: String? = nil, completion: @escaping ((Result<GraphQLResult<UpdateUserMutation.Data>, Error>) -> Void)) {
        let id = self.getUserId()
        self.getCurrentUserWithResult(completion: {result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    let u = status.data?.user
                    
                    let _email = (email != nil) ? email : u?.email
                    let _unionid = (unionid != nil) ? unionid : u?.unionid
                    let _openid = (openid != nil) ? openid : u?.openid
                    let _emailVerified = (emailVerified != nil) ? emailVerified : u?.emailVerified
                    let _phone = (phone != nil) ? phone : u?.phone
                    let _phoneVerified = (phoneVerified != nil) ? phoneVerified : u?.phoneVerified
                    let _username = (username != nil) ? username : u?.username
                    let _nickname = (nickname != nil) ? nickname : u?.nickname
                    let _password = (password != nil) ? password : u?.password
                    let _photo = (photo != nil) ? photo : u?.photo
                    let _company = (company != nil) ? company : u?.company
                    let _browser = (browser != nil) ? browser : u?.browser
                    let _device = (device != nil) ? device : u?.device
                    let _oauth = (oauth != nil) ? oauth : u?.oauth
                    let _tokenExpiredAt = (tokenExpiredAt != nil) ? tokenExpiredAt : u?.tokenExpiredAt
                    let _loginsCount = (loginsCount != nil) ? loginsCount : u?.loginsCount
                    let _lastLogin = (lastLogin != nil) ? lastLogin : u?.lastLogin
                    let _lastIp = (lastIp != nil) ? lastIp : u?.lastIp
                    let _blocked = (blocked != nil) ? blocked : u?.blocked
                    let _name = (name != nil) ? name : u?.name
                    let _givenName = (givenName != nil) ? givenName : u?.givenName
                    let _familyName = (familyName != nil) ? familyName : u?.familyName
                    let _middleName = (middleName != nil) ? middleName : u?.middleName
                    let _profile = (profile != nil) ? profile : u?.profile
                    let _preferredUsername = (preferredUsername != nil) ? preferredUsername : u?.preferredUsername
                    let _website = (website != nil) ? website : u?.website
                    let _gender = (gender != nil) ? gender : u?.gender
                    let _birthdate = (birthdate != nil) ? birthdate : u?.birthdate
                    let _zoneinfo = (zoneinfo != nil) ? zoneinfo : u?.zoneinfo
                    let _locale = (locale != nil) ? locale : u?.locale
                    let _address = (address != nil) ? address : u?.address
                    let _formatted = (formatted != nil) ? formatted : u?.formatted
                    let _streetAddress = (streetAddress != nil) ? streetAddress : u?.streetAddress
                    let _locality = (locality != nil) ? locality : u?.locality
                    let _region = (region != nil) ? region : u?.region
                    let _postalCode = (postalCode != nil) ? postalCode : u?.postalCode
                    let _city = (city != nil) ? city : u?.city
                    let _province = (province != nil) ? province : u?.province
                    let _country = (country != nil) ? country : u?.country
                    let _externalId = (externalId != nil) ? externalId : u?.externalId
                    
                    Network.shared.apollo.perform(mutation: UpdateUserMutation(input: UpdateUserInput(email: _email, unionid: _unionid, openid: _openid, emailVerified: _emailVerified, phone: _phone, phoneVerified: _phoneVerified, username: _username, nickname: _nickname, password: _password, photo: _photo, company: _company, browser: _browser, device: _device, oauth: _oauth, tokenExpiredAt: _tokenExpiredAt, loginsCount: _loginsCount, lastLogin: _lastLogin, lastIp: _lastIp, blocked: _blocked, name: _name, givenName: _givenName, familyName: _familyName, middleName: _middleName, profile: _profile, preferredUsername: _preferredUsername, website: _website, gender: _gender, birthdate: _birthdate, zoneinfo: _zoneinfo, locale: _locale, address: _address, formatted: _formatted, streetAddress: _streetAddress, locality: _locality, region: _region, postalCode: _postalCode, city: _city, province: _province, country: _country, externalId: _externalId)), queue: DispatchQueue.main) { result in
                        completion(result)
                    }
                } else {
                    //Failure
                    print(status.errors ?? "")
                }
            case .failure(let error):
                print("Failure: \(error)")
            }
        })
    }
    
    /// Update Phone.
    /// 更新用户手机号
    /// - parameter phone: 新密码
    /// - parameter phoneCode: 新手机号的验证码
    /// - parameter oldPhone: 旧手机号
    /// - parameter oldPhoneCode: 旧手机号的验证码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    /// 更新用户手机号。和修改邮箱一样，默认情况下，如果用户当前已经绑定了手机号，需要同时验证原有手机号（目前账号绑定的手机号）和当前邮箱（将要绑定的手机号）。也就是说，用户 A 当前绑定的手机号为 15888888888，想修改为 15899999999，那么就需要同时验证这两个手机号。开发者也可以选择不开启 “验证原有手机号“ ，可以在 Authing 控制台 的 设置目录下的安全信息模块进行关闭。用户首次绑定手机号请使用 bindPhone 接口。
    ///
    public func updatePhoneWithResult(phone: String, phoneCode: String, oldPhone: String? = nil, oldPhoneCode: String? = nil, completion: @escaping ((Result<GraphQLResult<UpdatePhoneMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: UpdatePhoneMutation(phone: phone, phoneCode: phoneCode, oldPhone: oldPhone, oldPhoneCode: oldPhoneCode), queue: DispatchQueue.main) { result in
            completion(result)
        }
    }
    
    public func updateProfileREST(_ data: NSDictionary, completion: @escaping (Int, String?, NSDictionary?) -> Void) {
        let url = "\(Config.domain)/api/v2/users/profile/update"
        post(urlString: url, body: data, completion: completion)
    }
    
    public func get(urlString: String, completion: @escaping (Int, String?, NSDictionary?) -> Void) {
        request(urlString: urlString, method: "GET", body: nil, completion: completion)
    }
    
    public func post(urlString: String, body: NSDictionary?, completion: @escaping (Int, String?, NSDictionary?) -> Void) {
        request(urlString: urlString, method: "POST", body: body, completion: completion)
    }
    
    public func request(urlString: String, method: String, body: NSDictionary?, completion: @escaping (Int, String?, NSDictionary?) -> Void) {
        let url:URL! = URL(string:urlString)
        var request = URLRequest(url: url)
        request.httpMethod = method
        if (method == "POST") {
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            let httpBody = try? JSONSerialization.data(withJSONObject: body!, options: [])
            if (httpBody != nil) {
                request.httpBody = httpBody
            }
        }
        if (userPoolId != nil) {
            request.addValue(userPoolId!, forHTTPHeaderField: "x-authing-userpool-id")
        }
        if (token != nil) {
            request.addValue("Bearer \(token!)", forHTTPHeaderField: "Authorization")
        }

        request.timeoutInterval = 60
        if (appId != nil) {
            request.addValue(appId!, forHTTPHeaderField: "x-authing-app-id")
        }
        request.addValue(getLangHeader(), forHTTPHeaderField: "x-authing-lang")
        
        request.httpShouldHandleCookies = false
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard error == nil else {
                print("Guardian request network error:\(error!.localizedDescription)")
                completion(500, error!.localizedDescription, nil)
                return
            }
            
            guard data != nil else {
                print("data is null when requesting \(urlString)")
                completion(500, "no data from server", nil)
                return
            }
            
            do {
                guard let json = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary else {
                    print("data is not json when requesting \(urlString)")
                    completion(500, "only accept json data", nil)
                    return
                }
                
                let httpResponse = response as? HTTPURLResponse
                let statusCode: Int = (httpResponse?.statusCode)!
                guard statusCode == 200 || statusCode == 201 else {
                    print("Guardian request network error. Status code:" + statusCode.description)
                    let message: String? = json["message"] as? String
                    completion(statusCode, message ?? "Network Error", json)
                    return
                }
                
                if (json["code"] as? Int == nil) {
                    completion(200, nil, json)
                } else {
                    let code: Int = json["code"] as! Int
                    let message: String? = json["message"] as? String
                    let jsonData: NSDictionary? = json["data"] as? NSDictionary
                    if (jsonData == nil) {
                        let result = json["data"]
                        if (result == nil) {
                            completion(code, message, nil)
                        } else {
                            completion(code, message, ["data": result!])
                        }
                    } else {
                        completion(code, message, jsonData)
                    }
                }
            } catch {
                print("parsing json error when requesting \(urlString)")
                completion(500, urlString, nil)
            }
        }.resume()
    }
    
    public func getLangHeader() -> String {
        let langStr: String? = Locale.current.languageCode
        if (langStr!.hasPrefix("zh")) {
            return "zh-CN"
        } else {
            return "en-US"
        }
    }
}
