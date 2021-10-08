//
//  AuthenticationClient+Http.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/10.
//

import Apollo
import Alamofire
import UIKit

extension AuthenticationClient
{
    //MARK:--登出
    /// logout.
    /// 登出
    /// - returns: N/A
    ///
    /// logout
    ///
    public func logout(completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.logout
        let parameters = [
            "app_id": Config.keyAppId
        ]
        AHC.request(url, method: .get, parameters: parameters) { (result) in
            completion(result)
            print("[ \(#function) ] success")
            //let tResult = result as? [String: Any]
        }
    }
    
    /// logout.
    /// 登出
    /// - returns: N/A
    ///
    /// logout
    ///
    public func logoutWithResult(completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.logout
        let parameters = [
            "app_id": Config.keyAppId
        ]
//        AF.request(url, method: .post, parameters: parameters).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        AHC.requestWithResponse(url, method: .get, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
    
    //MARK:--使用 LDAP 用户名登录
    /// loginByLdap.
    /// 使用 LDAP 用户名登录
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter autoRegister: 是否自动注册。如果检测到用户不存在，会根据登录账密自动创建一个账号。
    /// - parameter captchaCode: 图形验证码
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用 LDAP 用户名登录。如果你的用户池配置了登录失败检测，当同一  IP 下登录多次失败的时候会要求用户输入图形验证码（code 为 2000)。
    ///
    public func loginByLdap(username: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.verifyuser
        let parameters = [
            "username": username,
            "password": password
        ]
//        AF.request(url, method: .post, parameters: parameters).responseJSON { response in
//            switch response.result {
//            case .success(let value):
//                completion(value)
//
//                print("\(#function) success")
//            case .failure(let error):
//                print(error)
//            }
//        }
        
        AHC.request(url, method: .post, parameters: parameters) { (result) in
            completion(result)
            
            print("[ \(#function) ] success")
        }
    }
    
    
    /// loginByLdap.
    /// 使用 LDAP 用户名登录
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter autoRegister: 是否自动注册。如果检测到用户不存在，会根据登录账密自动创建一个账号。
    /// - parameter captchaCode: 图形验证码
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用 LDAP 用户名登录。如果你的用户池配置了登录失败检测，当同一  IP 下登录多次失败的时候会要求用户输入图形验证码（code 为 2000)。
    ///
    public func loginByLdapWithResult(username: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.verifyuser
        let parameters = [
            "username": username,
            "password": password
        ]
//        AF.request(url, method: .post, parameters: parameters).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        AHC.requestWithResponse(url, method: .post, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
    
    //MARK:--获取当前用户能够访问的应用
    /// listApplications.
    /// 获取当前用户能够访问的应用
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取当前用户能够访问的应用
    ///
    public func listApplications(page: Int, limit: Int, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.listApplicationsLink
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let userPoolId = self.userPoolId ?? ""
        let headers: HTTPHeaders = [
            Config.userpoolidHeader: userPoolId,
            Config.contentTypeHeader: Config.contentTypeHeaderJsonValue,
            Config.authorizationHeader: token
        ]
        let parameters: [String: String] = [
            "page": String(page),
            "limit": String(limit)
        ]
//        AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default, headers: headers).responseJSON { response in
//            switch response.result {
//            case .success(let value):
//                completion(value)
//
//                print("\(#function) success")
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
        AHC.request(url, method: .post, parameters: parameters) { (result) in
            completion(result)
            
            print("[ \(#function) ] success")
        }
    }
    
    /// listApplications.
    /// 获取当前用户能够访问的应用
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取当前用户能够访问的应用
    ///
    public func listApplicationsWithResult(page: Int, limit: Int, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.listApplicationsLink
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let userPoolId = self.userPoolId ?? ""
        let headers: HTTPHeaders = [
            Config.userpoolidHeader: userPoolId,
            Config.contentTypeHeader: Config.contentTypeHeaderJsonValue,
            Config.authorizationHeader: token
        ]
        let parameters: [String: String] = [
            "page": String(page),
            "limit": String(limit)
        ]
//        AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default, headers: headers).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        AHC.requestWithResponse(url, method: .post, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
    
    //MARK:--使用AD 用户名登录
    /// loginByAD.
    /// 使用AD 用户名登录
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用AD 用户名登录
    ///
    public func loginByAD(username: String, password: String, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let subUrlArr = Config.domain.split(separator: ".")
        if subUrlArr.count<3 {
            print("The domain url is wrong!")
            return
        }
        let adNewUrl = "https://ws." + subUrlArr[1]+"."+subUrlArr[2]
        let fullUrl = adNewUrl + "/api/v2/ad/verify-user"
        
        let parameters = [
            "username": username,
            "password": password
        ]
//        AF.request(fullUrl, method: .post, parameters: parameters).responseJSON { response in
//            switch response.result {
//            case .success(let value):
//                completion(value)
//
//                print("\(#function) success")
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
        AHC.request(fullUrl, method: .post, parameters: parameters) { (result) in
            completion(result)
            
            print("[ \(#function) ] success")
        }
    }
    
    /// loginByAD.
    /// 使用AD 用户名登录
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用AD 用户名登录
    ///
    public func loginByADWithResult(username: String, password: String, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let subUrlArr = Config.domain.split(separator: ".")
        if subUrlArr.count<3 {
            print("The domain url is wrong!")
            return
        }
        let adNewUrl = "https://ws." + subUrlArr[1]+"."+subUrlArr[2]
        let fullUrl = adNewUrl + "/api/v2/ad/verify-user"
        
        let parameters = [
            "username": username,
            "password": password
        ]
//        AF.request(fullUrl, method: .post, parameters: parameters).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        AHC.requestWithResponse(fullUrl, method: .post, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
    
    //MARK:--微信登录
    /// Login by WeChat Code.
    /// 通过微信认证码登陆
    /// - parameter code: 微信认证码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 通过微信SDK返回的认证码登陆 https://docs.authing.cn/social-login/mobile/wechat.html
    ///
    public func loginByWeChatCode(code: String, completion: @escaping(Any) -> Void) {
        let userPoolId = self.userPoolId ?? ""
        let appId = self.appId ?? ""
        Config.domain = self.domain
        let url = Config.wechatmobile(userPoolId: userPoolId, code: code, appId: appId)
//        AF.request(url, method: .get).responseJSON { response in
//            switch response.result {
//            case .success(let value):
//                let json = JSON(value)
//                let code = json["code"].intValue
//                if(code == 200) {
//                    let token = json["data"]["token"].stringValue
//                    self.setToken(token)
//                }
//
//                print("\(#function) success")
//
//                completion(value)
//            case .failure(let error):
//                print(error)
//            }
//        }
        
        let parameters = [
            "app_id": Config.keyAppId
        ]
        
        AHC.dataRequest(url, method: .get, parameters: parameters).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let code = json["code"].intValue
                if(code == 200) {
                    let token = json["data"]["token"].stringValue
                    self.setToken(token)
                }
                
                print("\(#function) success")
                
                completion(value)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    /// Login by WeChat Code.
    /// 通过微信认证码登陆
    /// - parameter code: 微信认证码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 通过微信SDK返回的认证码登陆 https://docs.authing.cn/social-login/mobile/wechat.html
    ///
    public func loginByWeChatCodeWithResult(code: String, completion: @escaping(Any) -> Void) {
        let userPoolId = self.userPoolId ?? ""
        let appId = self.appId ?? ""
        Config.domain = self.domain
        let url = Config.wechatmobile(userPoolId: userPoolId, code: code, appId: appId)
        let parameters = [
            "app_id": Config.keyAppId
        ]
        
        AHC.dataRequest(url, method: .get, parameters: parameters).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let code = json["code"].intValue
                if(code == 200) {
                    let token = json["data"]["token"].stringValue
                    self.setToken(token)
                }
                
                print("[ \(#function) ] success")
                
                completion(value)
            case .failure(let error):
                print(error)
            }
        }
    }

    /// User Id Verify.
    /// 实名认证 - 使用姓名，身份证号码，人脸图像，需要登录后调用
    /// - parameter name: 姓名
    /// - parameter idCard: 身份证号码
    /// - parameter faceImageURL: 人脸图像 URL
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用姓名，身份证号码，人脸图像认证
    ///
    public func userIdVerify(name: String, idCard: String, faceImageURL: URL, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.idverify
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let userPoolId = self.userPoolId ?? ""
        let faceImageLink = faceImageURL.absoluteString
        let headers: HTTPHeaders = [
            Config.userpoolidHeader: userPoolId,
            Config.contentTypeHeader: Config.contentTypeHeaderJsonValue,
            Config.authorizationHeader: token
        ]
        let parameters: [String: String] = [
            "name": name,
            "idCard": idCard,
            "faceImage": faceImageLink
        ]
        AHC.request(url, method: .post, parameters: parameters) { (result) in
            completion(result)
            
            print("[ \(#function) ] success")
        }
//        AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default, headers: headers).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
    }
    
    /// User Id Verify.
    /// 实名认证 - 使用姓名，身份证号码，人脸图像，需要登录后调用
    /// - parameter name: 姓名
    /// - parameter idCard: 身份证号码
    /// - parameter faceImageBase64: 人脸图像 Base64 编码，例如"data:image/jpeg;base64,/9j/4QFmRXhpZgA"
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 实名认证 - 使用姓名，身份证号码，人脸图像，需要登录后调用
    ///
    public func userIdVerifyByFaceImageBase64(name: String, idCard: String, faceImageBase64: String, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.idverify
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let userPoolId = self.userPoolId ?? ""
        let headers: HTTPHeaders = [
            Config.userpoolidHeader: userPoolId,
            Config.contentTypeHeader: Config.contentTypeHeaderJsonValue,
            Config.authorizationHeader: token
        ]
        let parameters: [String: String] = [
            "name": name,
            "idCard": idCard,
            "faceImage": faceImageBase64
        ]
        
        AHC.request(url, method: .post, parameters: parameters) { (result) in
            completion(result)
            
            print("[ \(#function) ] success")
        }
        
//        AF.request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default, headers: headers).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
    }

    /// User Id Verify Status.
    /// 查询实名认证状态，需要登录后调用
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 查询实名认证状态，需要登录后调用
    ///
    public func userIdVerifyStatus(completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.idverifystatus
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let userPoolId = self.userPoolId ?? ""
        
//        let headers: HTTPHeaders = [
//            Config.userpoolidHeader: userPoolId,
//            Config.authorizationHeader: token
//        ]
//
//        AF.request(url, method: .get, headers: headers).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        let parameters = [String: String]()
        
        AHC.request(url, method: .get, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
    
    
    /// Social Link.
    /// 将社交账号绑定到主账号，需要登录后调用。
    /// - parameter secondaryUserToken: 社交账号 Token
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 将社交账号绑定到主账号，需要登录后调用，primaryUserToken 为当前登录用户的 token。
    /// 如果希望绑定一个社交账号到一个主账号，那么终端用户必须提供社交账号的凭证和主账号的凭证，这样才能证明他是这两个账号的主人，然后进行绑定。
    /// 当完成社交账号绑定后，原来社交账号对应的数据会被删除，无法再次登录到原来的社交账号。
    /// https://docs.authing.cn/user/link-account.html
    ///
    public func socialLink(secondaryUserToken: String, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.sociallink
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let headers: HTTPHeaders = [
            Config.contentTypeHeader: Config.contentTypeHeaderUrlencodedValue
        ]
        let parameters: [String: String] = [
            "primaryUserToken": token,
            "secondaryUserToken": secondaryUserToken
        ]
//        AF.request(url, method: .post, parameters: parameters, encoder: URLEncodedFormParameterEncoder.default, headers: headers).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        AHC.request(url, method: .post, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
    
    /// Social Link.
    /// 将社交账号绑定到主账号
    /// - parameter primaryUserToken: 主账号 Token
    /// - parameter secondaryUserToken: 社交账号 Token
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 将社交账号绑定到主账号。
    /// 如果希望绑定一个社交账号到一个主账号，那么终端用户必须提供社交账号的凭证和主账号的凭证，这样才能证明他是这两个账号的主人，然后进行绑定。
    /// 当完成社交账号绑定后，原来社交账号对应的数据会被删除，无法再次登录到原来的社交账号。
    /// https://docs.authing.cn/user/link-account.html
    ///
    public func socialLink(primaryUserToken: String, secondaryUserToken: String, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.sociallink
        
        let parameters: [String: String] = [
            "primaryUserToken": primaryUserToken,
            "secondaryUserToken": secondaryUserToken
        ]
//        AF.request(url, method: .post, parameters: parameters, encoder: URLEncodedFormParameterEncoder.default, headers: headers).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        AHC.request(url, method: .post, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
    
    /// unSocial Link.
    /// 将社交账号解绑
    /// - parameter primaryUserToken: 主账号 Token
    /// - parameter secondaryUserToken: 社交账号 Token
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 将社交账号将社交账号解绑
    ///
    /// https://docs.authing.cn/user/link-account.html
    ///
    public func socialUnLink(primaryUserToken: String, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.socialunlink
        
//        let headers: HTTPHeaders = [
//            Config.contentTypeHeader: Config.contentTypeHeaderUrlencodedValue
//        ]
        let parameters: [String: String] = [
            "primaryUserToken": primaryUserToken
        ]
        
//        AF.request(url, method: .post, parameters: parameters, encoder: URLEncodedFormParameterEncoder.default, headers: headers).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        AHC.request(url, method: .post, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
    
    /// Get Security Level.
    /// 获取用户账号安全等级
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取用户账号安全等级
    ///
    public func getSecurityLevel(completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.getSecurityLevel
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let userPoolId = self.userPoolId ?? ""
//        let headers: HTTPHeaders = [
//            Config.userpoolidHeader: userPoolId,
//            Config.authorizationHeader: token
//        ]
//        AF.request(url, method: .get, headers: headers).responseJSON { response in
//            completion(response.result)
//
//            print("\(#function) success")
//        }
        
        let parameters = [String:String]()
        
        
        AHC.request(url, method: .get, parameters: parameters) { (response) in
            completion(response)
            
            print("[ \(#function) ] success")
        }
    }
}
