//
//  AuthenticationClient+Edit.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/10.
//

import Apollo
import Alamofire
import Foundation

extension AuthenticationClient
{
    //MARK: --发送邮件
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
                
                print("\(#function) success")
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
    public func sendEmailWithResult(email: String, scene: EmailScene, completion: @escaping ((Result<GraphQLResult<SendEmailMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: SendEmailMutation(email: email, scene: scene), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    //MARK: --自定义数据管理
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
                
                print("\(#function) success")
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
    public func setUdvWithResult(key: String, value: Any, completion: @escaping ((Result<GraphQLResult<SetUdvMutation.Data>, Error>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.perform(mutation: SetUdvMutation(targetType: UDFTargetType.user, targetId: id, key: key, value: Encryption.stringify(value)), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    //MARK: --删除自定义数据
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
                
                print("\(#function) success")
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
    public func removeUdvWithResult(key: String, completion: @escaping ((Result<GraphQLResult<RemoveUdvMutation.Data>, Error>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.perform(mutation: RemoveUdvMutation(targetType: UDFTargetType.user, targetId: id, key: key), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    //MARK: --通过短信验证码重置密码
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
                
                print("\(#function) success")
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
    public func resetPasswordByPhoneCodeWithResult(phone: String, code: String, newPassword: String, completion: @escaping ((Result<GraphQLResult<ResetPasswordMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: ResetPasswordMutation(phone: phone, code: code, newPassword: Encryption.encrypt(newPassword)), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")

        }
    }

    //MARK: --通过邮件验证码重置密码
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
                
                print("\(#function) success")
            }
        }
    }
    
    //MARK: --更新用户手机号
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
                
                print("\(#function) success")
            }
        }
    }
    
    //MARK: --通过邮件验证码重置密码
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
    public func resetPasswordByEmailCodeWithResult(email: String, code: String, newPassword: String, completion: @escaping ((Result<GraphQLResult<ResetPasswordMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: ResetPasswordMutation(email: email, code: code, newPassword: Encryption.encrypt(newPassword)), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    //MARK: --更新用户密码
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
                
                print("\(#function) success")
            }
        }
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
    public func updatePasswordWithResult(newPassword: String, oldPassword: String = "", completion: @escaping ((Result<GraphQLResult<UpdatePasswordMutation.Data>, Error>) -> Void)) {
        Network.shared.apollo.perform(mutation: UpdatePasswordMutation(newPassword: Encryption.encrypt(newPassword), oldPassword: Encryption.encrypt(oldPassword)), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    //MARK: --刷新当前用户的 token
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
                
                print("\(#function) success")
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
    public func refreshTokenWithResult(completion: @escaping ((Result<GraphQLResult<RefreshTokenMutation.Data>, Error>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.perform(mutation: RefreshTokenMutation(id: id), queue: DispatchQueue.main) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
}
