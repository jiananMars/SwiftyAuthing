//
//  AuthenticationClient+Login.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/9.
//

import Apollo
import Alamofire
import Foundation

extension AuthenticationClient
{
    
    /// Register by Email and Password.
    //MARK: --使用邮箱注册
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
    public func registerByEmail(email: String,
                                password: String,
                                profile: RegisterProfile? = nil,
                                forceLogin: Bool? = nil,
                                generateToken: Bool? = nil,
                                clientIp: String? = nil,
                                params: String? = nil,
                                context: String? = nil,
                                completion: @escaping ((Result<GraphQLResult<RegisterByEmailMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByEmailMutation(input: RegisterByEmailInput(email: email, password:Encryption.encrypt(password), profile: profile, forceLogin: forceLogin, generateToken: generateToken, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                if(generateToken ?? false) {
                    let token = graphQLResult.data?.registerByEmail?.token ?? ""
                    self.setToken(token)
                }
                print("\(#function) success")
            }
            completion(result)
        }
    }

    /// Register by Username and Password.
    //MARK: --使用用户名注册
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
    public func registerByUsername(username: String,
                                   password: String,
                                   profile: RegisterProfile? = nil,
                                   forceLogin: Bool? = nil,
                                   generateToken: Bool? = nil,
                                   clientIp: String? = nil,
                                   params: String? = nil,
                                   context: String? = nil,
                                   completion: @escaping ((Result<GraphQLResult<RegisterByUsernameMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByUsernameMutation(input: RegisterByUsernameInput(username: username, password: Encryption.encrypt(password), profile: profile, forceLogin: forceLogin, generateToken: generateToken, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                if(generateToken ?? false) {
                    let token = graphQLResult.data?.registerByUsername?.token ?? ""
                    self.setToken(token)
                }
                print("\(#function) success")
            }
            completion(result)
        }
    }
    
    /// Register by Phone Number and SMS Code.
    //MARK: --使用手机号注册
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
    public func registerByPhoneCode(phone: String,
                                    code: String,
                                    password: String,
                                    profile: RegisterProfile? = nil,
                                    forceLogin: Bool? = nil,
                                    generateToken: Bool? = nil,
                                    clientIp: String? = nil,
                                    params: String? = nil,
                                    context: String? = nil,
                                    completion: @escaping ((Result<GraphQLResult<RegisterByPhoneCodeMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterByPhoneCodeMutation(input: RegisterByPhoneCodeInput(phone: phone, code: code, password: Encryption.encrypt(password), profile: profile, forceLogin: forceLogin, generateToken: generateToken, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                if(generateToken ?? false) {
                    let token = graphQLResult.data?.registerByPhoneCode?.token ?? ""
                    self.setToken(token)
                }
                print("\(#function) success")
            }
            
            completion(result)
        }
    }
    
    /// Send SMS Code to Phone Number.
    //MARK: --发送短信验证码
    /// - parameter phone: 手机号
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 发送短信验证码, 短信验证码的有效时间为 60 s。
    ///
    public func sendSmsCode(phone: String, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.sms
        let parameters = ["phone": phone]
        let headers: HTTPHeaders = [
            Config.userpoolidHeader: self.userPoolId!,
        ]
        AF.request(url, method: .post, parameters: parameters, headers: headers).responseJSON { response in
            switch response.result {
            case .success(let value):
                completion(value)
                
                print("\(#function) success")
            case .failure(let error):
                print(error)
            }
        }
    }

    /// Send SMS Code to Phone Number.
    //MARK: --发送短信验证码
    /// - parameter phone: 手机号
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 发送短信验证码, 短信验证码的有效时间为 60 s。
    ///
    public func sendSmsCodeWithResult(phone: String, completion: @escaping(Any) -> Void) {
        Config.domain = self.domain
        let url = Config.sms
        let parameters = ["phone": phone]
        let headers: HTTPHeaders = [
            Config.userpoolidHeader: self.userPoolId!,
        ]
        AF.request(url, method: .post, parameters: parameters, headers: headers).responseJSON { response in
            completion(response.result)
            
            print("\(#function) success")
        }
    }
}
