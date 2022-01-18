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
    //MARK:--使用子账户登录
    /// Login with Username and Password.
    /// 使用子账户登录
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用子账户登录
    ///
    public func loginBySubAccount(username: String, password: String,captchaCode: String? = nil, clientIp: String? = nil, completion: @escaping ((GraphQLResult<LoginBySubAccountMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation:LoginBySubAccountMutation(account: username, password: Encryption.encrypt(password), captchaCode: captchaCode, clientIp: clientIp), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginBySubAccount.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
                
                completion(graphQLResult)
            }
        }
    }
    
    /// Login with Username and Password.
    /// 使用子账户登录
    /// - parameter username: 用户名
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用子账户登录
    ///
    public func loginBySubAccountWithResult(username: String, password: String,captchaCode: String? = nil, clientIp: String? = nil, completion: @escaping ((Result<GraphQLResult<LoginBySubAccountMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation:LoginBySubAccountMutation(account: username, password: Encryption.encrypt(password), captchaCode: captchaCode, clientIp: clientIp), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginBySubAccount.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
            }
            completion(result)
        }
    }
    
    //MARK:--使用邮箱登录
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
        Network.shared.apollo.perform(mutation: LoginByEmailMutation(input: LoginByEmailInput(email: email, password: Encryption.encrypt(password))), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByEmail?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
                
                completion(graphQLResult)
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
    public func loginByEmailWithResult(email: String, password: String, completion: @escaping ((Result<GraphQLResult<LoginByEmailMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByEmailMutation(input: LoginByEmailInput(email: email, password: Encryption.encrypt(password))), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByEmail?.token ?? ""
                self.setToken(token)
                print("\(#function) success")
            }
            completion(result)
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
    public func loginByEmail(email: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil,params: String? = nil,context: String? = nil, completion: @escaping ((GraphQLResult<LoginByEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByEmailMutation(input: LoginByEmailInput(email: email, password: Encryption.encrypt(password), captchaCode: captchaCode, autoRegister: autoRegister, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByEmail?.token ?? ""
                self.setToken(token)
                print("\(#function) success")
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
    public func loginByEmailWithResult(email: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil,params: String? = nil,context: String? = nil, completion: @escaping ((Result<GraphQLResult<LoginByEmailMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByEmailMutation(input: LoginByEmailInput(email: email, password: Encryption.encrypt(password), captchaCode: captchaCode, autoRegister: autoRegister, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByEmail?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
            }
            completion(result)
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
        
        Network.shared.apollo.perform(mutation: LoginByUsernameMutation(input: LoginByUsernameInput(username: username, password: Encryption.encrypt(password))), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByUsername?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
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
    public func loginByUsernameWithResult(username: String, password: String, completion: @escaping ((Result<GraphQLResult<LoginByUsernameMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByUsernameMutation(input: LoginByUsernameInput(username: username, password: Encryption.encrypt(password))), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByUsername?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
            }
            completion(result)
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
    public func loginByUsername(username: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil,params: String? = nil,context: String? = nil, completion: @escaping ((GraphQLResult<LoginByUsernameMutation.Data>) -> Void)) {Network.shared.apollo.perform(mutation: LoginByUsernameMutation(input: LoginByUsernameInput(username: username, password: Encryption.encrypt(password), captchaCode: captchaCode, autoRegister: autoRegister, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByUsername?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
                
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
    public func loginByUsernameWithResult(username: String, password: String, autoRegister: Bool? = nil, captchaCode: String? = nil, clientIp: String? = nil,params: String? = nil,context: String? = nil, completion: @escaping ((Result<GraphQLResult<LoginByUsernameMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByUsernameMutation(input: LoginByUsernameInput(username: username, password: Encryption.encrypt(password), captchaCode: captchaCode, autoRegister: autoRegister, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByUsername?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
            }
            completion(result)
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
        Network.shared.apollo.perform(mutation: LoginByPhoneCodeMutation(input: LoginByPhoneCodeInput(phone: phone, code: code)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByPhoneCode?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
                
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
    public func loginByPhoneCodeWithResult(phone: String, code: String, completion: @escaping ((Result<GraphQLResult<LoginByPhoneCodeMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhoneCodeMutation(input: LoginByPhoneCodeInput(phone: phone, code: code)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByPhoneCode?.token ?? ""
                self.setToken(token)
                print("\(#function) success")
            }
            completion(result)
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
    public func loginByPhoneCode(phone: String, code: String, autoRegister: Bool? = nil, clientIp: String? = nil,params: String? = nil,context: String? = nil, completion: @escaping ((GraphQLResult<LoginByPhoneCodeMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhoneCodeMutation(input: LoginByPhoneCodeInput(phone: phone, code: code, autoRegister: autoRegister, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByPhoneCode?.token ?? ""
                self.setToken(token)
                print("\(#function) success")
                completion(graphQLResult)
            }
        }
    }
    
    /// Login by Phone Number and SMS Code.
    /// 使用手机号验证码登录
    /// - parameter phone: 手机号
    /// - parameter code: 短信验证码
    /// - parameter clientIp: 客户端真实 IP，如果你在服务器端调用此接口，请务必将此参数设置为终端用户的真实 IP。
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 使用手机号验证码登录。
    ///
    public func loginByPhoneCodeWithResult(phone: String, code: String, autoRegister: Bool? = nil, clientIp: String? = nil,params: String? = nil,context: String? = nil, completion: @escaping ((Result<GraphQLResult<LoginByPhoneCodeMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhoneCodeMutation(input: LoginByPhoneCodeInput(phone: phone, code: code, autoRegister: autoRegister, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByPhoneCode?.token ?? ""
                self.setToken(token)
                print("\(#function) success")
            }
            completion(result)
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
        Network.shared.apollo.perform(mutation: LoginByPhonePasswordMutation(input: LoginByPhonePasswordInput(phone: phone, password: Encryption.encrypt(password))), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByPhonePassword?.token ?? ""
                self.setToken(token)
                print("\(#function) success")
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
    public func loginByPhonePasswordWithResult(phone: String, password: String, completion: @escaping ((Result<GraphQLResult<LoginByPhonePasswordMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhonePasswordMutation(input: LoginByPhonePasswordInput(phone: phone, password: Encryption.encrypt(password))), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByPhonePassword?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
            }
            completion(result)
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
    public func loginByPhonePassword(phone: String, password: String, captchaCode: String? = nil, autoRegister: Bool? = nil, clientIp: String? = nil,params: String? = nil,context: String? = nil, completion: @escaping ((GraphQLResult<LoginByPhonePasswordMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhonePasswordMutation(input: LoginByPhonePasswordInput(phone: phone, password: Encryption.encrypt(password), captchaCode: captchaCode, autoRegister: autoRegister, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByPhonePassword?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
                
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
    public func loginByPhonePasswordWithResult(phone: String, password: String, captchaCode: String? = nil, autoRegister: Bool? = nil, clientIp: String? = nil,params: String? = nil,context: String? = nil, completion: @escaping ((Result<GraphQLResult<LoginByPhonePasswordMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhonePasswordMutation(input: LoginByPhonePasswordInput(phone: phone, password: Encryption.encrypt(password), captchaCode: captchaCode, autoRegister: autoRegister, clientIp: clientIp, params: params, context: context)), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                let token = graphQLResult.data?.loginByPhonePassword?.token ?? ""
                self.setToken(token)
                
                print("\(#function) success")
            }
            completion(result)
        }
    }
}
