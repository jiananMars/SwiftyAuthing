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
    
    /// Secret: The secret of user pool.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
//    public var secret: String?
    
    /// Host: The host of User Pool.
    ///
    public var host: String?
    
    /// AccessToken: The AccessToken of user.
    ///
    private var _accessToken: String?
    public var accessToken: String? {
        get {
            return self._accessToken
        }
        set {
            self.setAccessToken(newValue ?? "")
            self._accessToken = newValue
        }
    }

    /// CachePolicy: A cache policy that specifies whether results should be fetched from the server or loaded from the local cache.
    ///
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
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
    public init(userPoolId: String) {
        self.userPoolId = userPoolId
        UserDefaults.standard.setValue(userPoolId, forKey: Config.keyUserPoolId)
    }
    
    /// Init with UserPoolId and Secret
    /// userPoolId: The user pool Id.
    /// secret: The secret of user pool.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
//    public init(userPoolId: String, secret: String) {
//        self.userPoolId = userPoolId
//        self.secret = secret
//        UserDefaults.standard.setValue(userPoolId, forKey: Config.keyUserPoolId)
//    }
    
    /// Init with UserPoolId and Host
    /// userPoolId: The user pool Id.
    /// host: The host of user pool.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
    public init(userPoolId: String, host: String) {
        self.userPoolId = userPoolId
        self.host = host
        Network.shared.host = host
        UserDefaults.standard.setValue(userPoolId, forKey: Config.keyUserPoolId)
    }
    
    /// Init with UserPoolId, Secret, and Host
    /// userPoolId: The user pool Id.
    /// secret: The secret of user pool.
    /// host: The host of user pool.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
//    public init(userPoolId: String, secret: String, host: String) {
//        self.userPoolId = userPoolId
//        self.secret = secret
//        self.host = host
//        Network.shared.host = host
//        UserDefaults.standard.setValue(userPoolId, forKey: Config.keyUserPoolId)
//    }
    
    
    /// Register by Email and Password.
    /// 使用邮箱注册
    /// - parameter email: 邮箱
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用邮箱注册，此接口不要求用户对邮箱进行验证，用户注册之后 emailVerified 字段会为 false 。如果你希望邮箱未验证的用户不能进行登录，可以使用 pipeline 对此类请求进行拦截。
    ///
    public func registerByEmail(email: String, password: String, completion: @escaping ((GraphQLResult<RegisterByEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByEmailMutation(email: email, password: Encryption.encrypt(password)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    /// Register by Email and Password.
    /// 使用邮箱注册
    /// - parameter email: 邮箱
    /// - parameter password: 密码
    /// - parameter RegisterProfile: [profile] 用户资料
    /// - parameter forceLogin: 是否走一遍完整的登录的，会触发登录前后的 pipeline 函数以及登录事件 webhook ，同时该用户的累计登录次数会加 1 。默认为 false 。
    /// - parameter generateToken: 是否为该用户生成 token，不会触发登录后的完整流程，用户的累计登录次数不会加 1。默认为 false 。
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用邮箱注册，此接口不要求用户对邮箱进行验证，用户注册之后 emailVerified 字段会为 false 。如果你希望邮箱未验证的用户不能进行登录，可以使用 pipeline 对此类请求进行拦截。
    ///
    public func registerByEmail(email: String, password: String, profile: RegisterProfile? = nil, forceLogin: Bool? = nil, generateToken: Bool? = nil, clientIp: String? = nil, completion: @escaping ((GraphQLResult<RegisterByEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByEmailMutation(email: email, password: Encryption.encrypt(password), profile: profile, forceLogin: forceLogin, generateToken: generateToken, clientIp: clientIp), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                if(generateToken ?? false) {
                    let accessToken = graphQLResult.data?.registerByEmail?.token ?? ""
                    self.setAccessToken(accessToken)
                }
                completion(graphQLResult)
            }
        }
    }
    
    
    /// Register by Username and Password.
    /// 使用用户名注册
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用用户名注册
    ///
    public func registerByUsername(username: String, password: String, completion: @escaping ((GraphQLResult<RegisterByUsernameMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByUsernameMutation(username: username, password: Encryption.encrypt(password)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    /// Register by Username and Password.
    /// 使用用户名注册
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter RegisterProfile: [profile] 用户资料
    /// - parameter forceLogin: 是否走一遍完整的登录的，会触发登录前后的 pipeline 函数以及登录事件 webhook ，同时该用户的累计登录次数会加 1 。默认为 false 。
    /// - parameter generateToken: 是否为该用户生成 token，不会触发登录后的完整流程，用户的累计登录次数不会加 1。默认为 false 。
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用用户名注册
    ///
    public func registerByUsername(username: String, password: String, profile: RegisterProfile? = nil, forceLogin: Bool? = nil, generateToken: Bool? = nil, clientIp: String? = nil, completion: @escaping ((GraphQLResult<RegisterByUsernameMutation.Data>) -> Void)) {
        
        Network.shared.apollo.perform(mutation: RegisterByUsernameMutation(username: username, password: Encryption.encrypt(password), profile: profile, forceLogin: forceLogin, generateToken: generateToken, clientIp: clientIp), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                if(generateToken ?? false) {
                    let accessToken = graphQLResult.data?.registerByUsername?.token ?? ""
                    self.setAccessToken(accessToken)
                }
                completion(graphQLResult)
            }
        }
    }


    /// Register by Phone Number and SMS Code.
    /// 使用手机号注册
    /// - parameter phone: 手机号
    /// - parameter code: 短信验证码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用手机号注册，你可以同时设置该账号的初始密码。发送短信的接口请见 sendSmsCode
    ///
    public func registerByPhoneCode(phone: String, code: String, completion: @escaping ((GraphQLResult<RegisterByPhoneCodeMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByPhoneCodeMutation(phone: phone, code: code), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    /// Register by Phone Number and SMS Code.
    /// 使用手机号注册
    /// - parameter phone: 手机号
    /// - parameter code: 短信验证码
    /// - parameter password: 初始密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用手机号注册，你可以同时设置该账号的初始密码。发送短信的接口请见 sendSmsCode
    ///
    public func registerByPhoneCode(phone: String, code: String, password: String, completion: @escaping ((GraphQLResult<RegisterByPhoneCodeMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByPhoneCodeMutation(phone: phone, code: code, password: Encryption.encrypt(password)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    /// Register by Phone Number and SMS Code.
    /// 使用手机号注册
    /// - parameter phone: 手机号
    /// - parameter code: 短信验证码
    /// - parameter password: 初始密码
    /// - parameter RegisterProfile: [profile] 用户资料
    /// - parameter forceLogin: 是否走一遍完整的登录的，会触发登录前后的 pipeline 函数以及登录事件 webhook ，同时该用户的累计登录次数会加 1 。默认为 false 。
    /// - parameter generateToken: 是否为该用户生成 token，不会触发登录后的完整流程，用户的累计登录次数不会加 1。默认为 false 。
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用手机号注册，你可以同时设置该账号的初始密码。发送短信的接口请见 sendSmsCode
    ///
    public func registerByPhoneCode(phone: String, code: String, password: String, profile: RegisterProfile? = nil, forceLogin: Bool? = nil, generateToken: Bool? = nil, clientIp: String? = nil, completion: @escaping ((GraphQLResult<RegisterByPhoneCodeMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByPhoneCodeMutation(phone: phone, code: code, password: Encryption.encrypt(password), profile: profile, forceLogin: forceLogin, generateToken: generateToken, clientIp: clientIp), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                if(generateToken ?? false) {
                    let accessToken = graphQLResult.data?.registerByPhoneCode?.token ?? ""
                    self.setAccessToken(accessToken)
                }
                completion(graphQLResult)
            }
        }
    }

    
    /// Check Password Strength.
    /// 检查密码强度
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 检查密码强度，详情请见: https://docs.authing.co/security/config-user-pool-password-level.html
    ///
    public func checkPasswordStrength(password: String, completion: @escaping ((GraphQLResult<CheckPasswordStrengthQuery.Data>) -> Void)) {
        Network.shared.apollo.fetch(query: CheckPasswordStrengthQuery(password: password), cachePolicy: self._cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// Send SMS Code to Phone Number.
    /// 发送短信验证码
    /// - parameter phone: 手机号
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 发送短信验证码, 短信验证码的有效时间为 60 s。
    ///
    public func sendSmsCode(phone: String, completion: @escaping(Any) -> Void) {
        let url = Config.sms
        let parameters = ["phone": phone]
        let headers: HTTPHeaders = [
            Config.userpoolid: self.userPoolId!,
        ]
        AF.request(url, method: .post, parameters: parameters, headers: headers).responseJSON { response in
            switch response.result {
            case .success(let value):
                completion(value)
            case .failure(let error):
                print(error)
            }
        }
    }

    
    /// Login by Email and Password.
    /// 使用邮箱登录
    /// - parameter email: 邮箱
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用邮箱登录，该接口默认不会限制未验证的邮箱进行登录，如果你希望邮箱未验证的用户不能进行登录，可以使用 pipeline 对此类请求进行拦截。如果你的用户池配置了登录失败检测，当同一 IP 下登录多次失败的时候会要求用户输入图形验证码（code 为 2000)。
    ///
    public func loginByEmail(email: String, password: String, completion: @escaping ((GraphQLResult<LoginByEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByEmailMutation(email: email, password: Encryption.encrypt(password)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let accessToken = graphQLResult.data?.loginByEmail?.token ?? ""
                self.setAccessToken(accessToken)
                completion(graphQLResult)
            }
        }
    }
    
    /// Login by Email and Password.
    /// 使用邮箱登录
    /// - parameter email: 邮箱
    /// - parameter password: 密码
    /// - parameter autoRegister: 是否自动注册。如果检测到用户不存在，会根据登录账密自动创建一个账号。
    /// - parameter captchaCode: 图形验证码
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用邮箱登录，该接口默认不会限制未验证的邮箱进行登录，如果你希望邮箱未验证的用户不能进行登录，可以使用 pipeline 对此类请求进行拦截。如果你的用户池配置了登录失败检测，当同一 IP 下登录多次失败的时候会要求用户输入图形验证码（code 为 2000)。
    ///
    public func loginByEmail(email: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil, completion: @escaping ((GraphQLResult<LoginByEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByEmailMutation(email: email, password: Encryption.encrypt(password), autoRegister: autoRegister, captchaCode: captchaCode, clientIp: clientIp), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let accessToken = graphQLResult.data?.loginByEmail?.token ?? ""
                self.setAccessToken(accessToken)
                completion(graphQLResult)
            }
        }
    }
    
    
    /// Login with Username and Password.
    /// 使用用户名登录
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用用户名登录
    ///
    public func loginByUsername(username: String, password: String, completion: @escaping ((GraphQLResult<LoginByUsernameMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByUsernameMutation(username: username, password: Encryption.encrypt(password)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let accessToken = graphQLResult.data?.loginByUsername?.token ?? ""
                self.setAccessToken(accessToken)
                completion(graphQLResult)
            }
        }
    }
    
    /// Login with Username and Password.
    /// 使用用户名登录
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter autoRegister: 是否自动注册。如果检测到用户不存在，会根据登录账密自动创建一个账号。
    /// - parameter captchaCode: 图形验证码
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用用户名登录
    ///
    public func loginByUsername(username: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil, completion: @escaping ((GraphQLResult<LoginByUsernameMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByUsernameMutation(username: username, password: Encryption.encrypt(password), autoRegister: autoRegister, captchaCode: captchaCode, clientIp: clientIp), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let accessToken = graphQLResult.data?.loginByUsername?.token ?? ""
                self.setAccessToken(accessToken)
                completion(graphQLResult)
            }
        }
    }

    
    /// Login by Phone Number and SMS Code.
    /// 使用手机号验证码登录
    /// - parameter phone: 手机号
    /// - parameter code: 短信验证码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用手机号验证码登录。
    ///
    public func loginByPhoneCode(phone: String, code: String, completion: @escaping ((GraphQLResult<LoginByPhoneCodeMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhoneCodeMutation(phone: phone, code: code), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let accessToken = graphQLResult.data?.loginByPhoneCode?.token ?? ""
                self.setAccessToken(accessToken)
                completion(graphQLResult)
            }
        }
    }
    
    /// Login by Phone Number and SMS Code.
    /// 使用手机号验证码登录
    /// - parameter phone: 手机号
    /// - parameter code: 短信验证码
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter autoRegister: 如果用户不存在，是否自动注册账号，默认为 true
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用手机号验证码登录。
    ///
    public func loginByPhoneCode(phone: String, code: String, autoRegister: Bool? = nil, clientIp: String? = nil, completion: @escaping ((GraphQLResult<LoginByPhoneCodeMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhoneCodeMutation(phone: phone, code: code, clientIp: clientIp, autoRegister: autoRegister), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let accessToken = graphQLResult.data?.loginByPhoneCode?.token ?? ""
                self.setAccessToken(accessToken)
                completion(graphQLResult)
            }
        }
    }
    
    /// Login by Phone Number and Password.
    /// 使用手机号密码登录
    /// - parameter phone: 手机号
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用手机号密码登录
    ///
    public func loginByPhonePassword(phone: String, password: String, completion: @escaping ((GraphQLResult<LoginByPhonePasswordMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhonePasswordMutation(phone: phone, password: Encryption.encrypt(password)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let accessToken = graphQLResult.data?.loginByPhonePassword?.token ?? ""
                self.setAccessToken(accessToken)
                completion(graphQLResult)
            }
        }
    }
    
    /// Login by Phone Number and Password.
    /// 使用手机号密码登录
    /// - parameter phone: 手机号
    /// - parameter password: 密码
    /// - parameter autoRegister: 是否自动注册。如果检测到用户不存在，会根据登录账密自动创建一个账号。
    /// - parameter captchaCode: 图形验证码
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用手机号密码登录
    ///
    public func loginByPhonePassword(phone: String, password: String, captchaCode: String? = nil, autoRegister: Bool? = nil, clientIp: String? = nil, completion: @escaping ((GraphQLResult<LoginByPhonePasswordMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhonePasswordMutation(phone: phone, password: Encryption.encrypt(password), captchaCode: captchaCode, autoRegister: autoRegister, clientIp: clientIp), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let accessToken = graphQLResult.data?.loginByPhonePassword?.token ?? ""
                self.setAccessToken(accessToken)
                completion(graphQLResult)
            }
        }
    }
    
    
    /// Check Login Status.
    /// 检测 Token 登录状态
    /// - parameter token: token 用户的登录凭证 token
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 检测 Token 登录状态
    ///
    public func checkLoginStatus(token: String, completion: @escaping ((GraphQLResult<CheckLoginStatusQuery.Data>) -> Void)) {
        UserDefaults.standard.setValue("", forKey: Config.keyAccessToken)
        Network.shared.apollo.fetch(query: CheckLoginStatusQuery(token: token), cachePolicy: self._cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }


    /// Send Email.
    /// 发送邮件
    /// - parameter email: 邮箱
    /// - parameter scene: 发送场景，可选值为 RESET_PASSWORD（发送重置密码邮件，邮件中包含验证码）、VerifyEmail（发送验证邮箱的邮件）、ChangeEmail（发送修改邮箱邮件，邮件中包含验证码）
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 发送邮件
    ///
    public func sendEmail(email: String, scene: EmailScene, completion: @escaping ((GraphQLResult<SendEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: SendEmailMutation(email: email, scene: scene), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }


    /// Reset Password by Phone Code.
    /// 通过短信验证码重置密码
    /// - parameter phone: 手机号
    /// - parameter code: 验证码
    /// - parameter newPassword: 新的密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 通过短信验证码重置密码，你需要先调用 sendSmsCode 接口发送重置密码邮件。
    ///
    public func resetPasswordByPhoneCode(phone: String, code: String, newPassword: String, completion: @escaping ((GraphQLResult<ResetPasswordMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: ResetPasswordMutation(phone: phone, code: code, newPassword: Encryption.encrypt(newPassword)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }

    /// Reset Password by Email Code.
    /// 通过邮件验证码重置密码
    /// - parameter email: 邮件
    /// - parameter code: 验证码
    /// - parameter newPassword: 新的密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 通过邮件验证码重置密码，你需要先调用 sendEmail 接口发送重置密码邮件。
    ///
    public func resetPasswordByEmailCode(email: String, code: String, newPassword: String, completion: @escaping ((GraphQLResult<ResetPasswordMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: ResetPasswordMutation(email: email, code: code, newPassword: Encryption.encrypt(newPassword)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
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
    public func updateProfile(username: String? = nil, nickname: String? = nil, photo: String? = nil, company: String? = nil, browser: String? = nil, device: String? = nil, lastIP: String? = nil, name: String? = nil, givenName: String? = nil, familyName: String? = nil, middleName: String? = nil, profile: String? = nil, preferredUsername: String? = nil, website: String? = nil, gender: String? = nil, birthdate: String? = nil, zoneinfo: String? = nil, locale: String? = nil, address: String? = nil, streetAddress: String? = nil, locality: String? = nil, region: String? = nil, postalCode: String? = nil, city: String? = nil, province: String? = nil, country: String? = nil, completion: @escaping ((GraphQLResult<UpdateUserMutation.Data>) -> Void)) {
        let id = self.getUserId()
        self.getCurrentUser(completion: {status in
            if(status.errors == nil) {
                //Success
                let u = status.data?.user
                let _username = (username != nil) ? username : u?.username
                let _nickname = (nickname != nil) ? nickname : u?.nickname
                let _photo = (photo != nil) ? photo : u?.photo
                let _company = (company != nil) ? company : u?.company
                let _browser = (browser != nil) ? browser : u?.browser
                let _device = (device != nil) ? device : u?.device
                let _lastIP = (lastIP != nil) ? lastIP : u?.lastIp
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
                let _streetAddress = (streetAddress != nil) ? streetAddress : u?.streetAddress
                let _locality = (locality != nil) ? locality : u?.locality
                let _region = (region != nil) ? region : u?.region
                let _postalCode = (postalCode != nil) ? postalCode : u?.postalCode
                let _city = (city != nil) ? city : u?.city
                let _province = (province != nil) ? province : u?.province
                let _country = (country != nil) ? country : u?.country
                Network.shared.apollo.perform(mutation: UpdateUserMutation(id: id, username: _username, nickname: _nickname, photo: _photo, company: _company, browser: _browser, device: _device, lastIP: _lastIP, name: _name, givenName: _givenName, familyName: _familyName, middleName: _middleName, profile: _profile, preferredUsername: _preferredUsername, website: _website, gender: _gender, birthdate: _birthdate, zoneinfo: _zoneinfo, locale: _locale, address: _address, streetAddress: _streetAddress, locality: _locality, region: _region, postalCode: _postalCode, city: _city, province: _province, country: _country), queue: DispatchQueue.main) { result in
                    switch result {
                    case .failure(let error):
                        print("Failure: \(error)")
                    case .success(let graphQLResult):
                        completion(graphQLResult)
                    }
                }
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    
    /// Update Password.
    /// 更新用户密码
    /// - parameter newPassword: 新密码
    /// - parameter oldPassword: 旧密码，如果用户没有设置密码，可以不填。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 更新用户密码。由手机号、社会化登录等其他方式注册的，首次没有设置密码，oldPassword 留空。
    ///
    public func updatePassword(newPassword: String, oldPassword: String = "", completion: @escaping ((GraphQLResult<UpdatePasswordMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: UpdatePasswordMutation(newPassword: Encryption.encrypt(newPassword), oldPassword: Encryption.encrypt(oldPassword)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
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
    public func updatePhone(phone: String, phoneCode: String, oldPhone: String? = nil, oldPhoneCode: String? = nil, completion: @escaping ((GraphQLResult<UpdatePhoneMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: UpdatePhoneMutation(phone: phone, phoneCode: phoneCode, oldPhone: oldPhone, oldPhoneCode: oldPhoneCode), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// Update Email.
    /// 更新用户邮箱
    /// - parameter email: 新密码
    /// - parameter emailCode: 新手机号的验证码
    /// - parameter oldEmail: 旧手机号
    /// - parameter oldEmailCode: 旧手机号的验证码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    /// 如果用户已经绑定了邮箱，默认情况下，需要同时验证原有邮箱（目前账号绑定的邮箱）和当前邮箱（将要绑定的邮箱）。也就是说，用户 A 当前绑定的邮箱为 123456@qq.com，想修改为 1234567@qq.com，那么就需要同时验证这两个邮箱。开发者也可以选择不开启 “验证原有邮箱“ ，可以在 Authing 控制台 的 设置目录下的安全信息模块进行关闭。用户首次绑定手机号请使用 bindEmail 接口。
    ///
    public func updateEmail(email: String, emailCode: String, oldEmail: String? = nil, oldEmailCode: String? = nil, completion: @escaping ((GraphQLResult<UpdateEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: UpdateEmailMutation(email: email, emailCode: emailCode, oldEmail: oldEmail, oldEmailCode: oldEmailCode), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    ///Refresh Token.
    /// 刷新当前用户的 token
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 刷新当前用户的 token，调用此接口要求先登录。
    ///
    public func refreshToken(completion: @escaping ((GraphQLResult<RefreshTokenMutation.Data>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.perform(mutation: RefreshTokenMutation(id: id), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// Get User Id.
    /// 通过 token 获取 User Id。
    /// - parameter token: 用户 Token
    /// - returns: User Id
    ///
    /// 通过 token 获取 User Id。
    ///
    private func getUserId() -> String {
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let id = Encryption.jwtDecode(token)
        print("token: " + token)
        print("uid: " + id)
        return id
    }
    
    
    /// Get Current User.
    /// 获取当前登录的用户信息
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取当前登录的用户信息
    ///
    public func getCurrentUser(completion: @escaping ((GraphQLResult<UserQuery.Data>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.fetch(query: UserQuery(id: id), cachePolicy: self._cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// bindPhone.
    /// 绑定手机号
    /// - parameter phone: Phone
    /// - parameter phoneCode: Phone Code
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 用户初次绑定手机号，如果需要修改手机号请使用 updatePhone 接口。
    ///
    public func bindPhone(phone: String, phoneCode: String, completion: @escaping ((GraphQLResult<BindPhoneMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: BindPhoneMutation(phone: phone, phoneCode: phoneCode), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// unbindPhone.
    /// 解绑手机号
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 用户解绑手机号
    ///
    public func unbindPhone(completion: @escaping ((GraphQLResult<UnbindPhoneMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: UnbindPhoneMutation(), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// unbindEmail.
    /// 解绑邮箱
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 用户解绑邮箱
    ///
    public func unbindEmail(completion: @escaping ((GraphQLResult<UnbindEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: UnbindEmailMutation(), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// Logout Current User.
    /// 退出登录
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 退出登录
    ///
    public func logout(completion: @escaping ((GraphQLResult<LogoutMutation.Data>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.perform(mutation: LogoutMutation(id: id, tokenExpiredAt: "0"), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                self.removeAccessToken()
                completion(graphQLResult)
            }
        }
    }
    
    
    
    /// List Udv.
    /// 获取当前用户的自定义数据列表
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取当前用户的自定义数据列表
    ///
    public func listUdv(completion: @escaping ((GraphQLResult<UdvQuery.Data>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.fetch(query: UdvQuery(targetType: UDFTargetType.user, targetId: id), cachePolicy: self._cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// Set Udv.
    /// 添加自定义数据
    /// - parameter key: 自定义字段的 key
    /// - parameter value: 自定义数据的值，值的类型必须要和用户池定义的自定义字段类型一致。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 添加自定义数据
    ///
    public func setUdv(key: String, value: Any, completion: @escaping ((GraphQLResult<SetUdvMutation.Data>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.perform(mutation: SetUdvMutation(targetType: UDFTargetType.user, targetId: id, key: key, value: Encryption.stringify(value)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }

    
    /// Remove Udv.
    /// 删除自定义数据
    /// - parameter key: 自定义字段的 key
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 删除自定义数据
    ///
    public func removeUdv(key: String, completion: @escaping ((GraphQLResult<RemoveUdvMutation.Data>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.perform(mutation: RemoveUdvMutation(targetType: UDFTargetType.user, targetId: id, key: key), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
            }
        }
    }
    
    
    /// listOrg.
    /// 获取用户所在组织机构
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取用户所在的组织机构立碑，以及他所属的节点在此组织机构内的完整路径。
    ///
    public func listOrg(completion: @escaping(Any) -> Void) {
        let url = Config.domain + "/api/v2/users/me/orgs"
        let headers: HTTPHeaders = [
            Config.userpoolid: self.userPoolId!,
            "Authorization": UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        ]
        AF.request(url, method: .get, headers: headers).responseJSON { response in
            switch response.result {
            case .success(let value):
                completion(value)
            case .failure(let error):
                print(error)
            }
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
    public func loginByLdap(username: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil, completion: @escaping(Any) -> Void) {
        let url = Config.domain + "/api/v2/ldap/verify-user"
//        let headers: HTTPHeaders = [
//            Config.userpoolid: self.userPoolId!,
//            "Authorization": UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
//        ]
        let parameters = [
            "username": username,
            "password": password
        ]
        AF.request(url, method: .post, parameters: parameters).responseJSON { response in
            switch response.result {
            case .success(let value):
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
    public func loginByWeChatCode(code: String, completion: @escaping(Any) -> Void) {
        let url = Config.domain + "/connection/social/wechat:mobile/\(self.userPoolId!)/callback?code=\(code)"
        AF.request(url, method: .get).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let code = json["code"].intValue
                if(code == 200) {
                    let accessToken = json["data"]["token"].stringValue
                    self.setAccessToken(accessToken)
                }
                completion(value)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    /// Set AccessToken.
    /// 设置用户的 AccessToken
    /// - parameter token: 用户的 AccessToken
    /// - returns: N/A
    ///
    /// 设置用户的 AccessToken
    ///
    private func setAccessToken(_ token: String) {
        self._accessToken = token
        UserDefaults.standard.setValue(token, forKey: Config.keyAccessToken)
    }
    
    /// Remove AccessToken.
    /// 清空用户的 AccessToken
    /// - returns: N/A
    ///
    /// 清空用户的 AccessToken
    ///
    private func removeAccessToken() {
        self._accessToken = ""
        UserDefaults.standard.setValue("", forKey: Config.keyAccessToken)
    }

}
