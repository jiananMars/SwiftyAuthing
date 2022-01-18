//
//  AuthenticationClient+Bind.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/10.
//
import Apollo
import Alamofire
import Foundation

extension AuthenticationClient
{
    //MARK:--绑定手机号
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
                
                print("\(#function) success")
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
    public func bindPhoneWithResult(phone: String, phoneCode: String, completion: @escaping ((Result<GraphQLResult<BindPhoneMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: BindPhoneMutation(phone: phone, phoneCode: phoneCode), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    //MARK:--用户解绑手机号
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
                
                print("\(#function) success")
            }
        }
    }
    
    //MARK:--解绑手机号
    /// unbindPhone.
    /// 解绑手机号
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 用户解绑手机号
    ///
    public func unbindPhoneWithResult(completion: @escaping ((Result<GraphQLResult<UnbindPhoneMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: UnbindPhoneMutation(), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    //MARK:-- 绑定邮箱
    /// bindEmail.
    /// 绑定邮箱
    /// - parameter email: 邮箱
    /// - parameter emailCode: 邮箱验证码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 用户解绑邮箱
    ///
    public func bindEmail(email: String, emailCode: String,completion: @escaping ((GraphQLResult<BindEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: BindEmailMutation(email: email, emailCode: emailCode), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
                
                print("\(#function) success")
            }
        }
    }
    
    /// bindEmail.
    /// 绑定邮箱
    /// - parameter email: 邮箱
    /// - parameter emailCode: 邮箱验证码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 用户绑定邮箱
    ///
    public func bindEmailWithResult(email: String, emailCode: String, completion: @escaping ((Result<GraphQLResult<BindEmailMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: BindEmailMutation(email: email, emailCode: emailCode), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
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
                
                print("\(#function) success")
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
    public func unbindEmailWithResult(completion: @escaping ((Result<GraphQLResult<UnbindEmailMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: UnbindEmailMutation(), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
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
                
                print("\(#function) success")
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
    public func updateEmailWithResult(email: String, emailCode: String, oldEmail: String? = nil, oldEmailCode: String? = nil, completion: @escaping ((Result<GraphQLResult<UpdateEmailMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: UpdateEmailMutation(email: email, emailCode: emailCode, oldEmail: oldEmail, oldEmailCode: oldEmailCode), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
}
