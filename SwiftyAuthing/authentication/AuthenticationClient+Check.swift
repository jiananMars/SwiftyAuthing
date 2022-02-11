//
//  AuthenticationClient+Check.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/10.
//

import Apollo
import Alamofire
import Foundation

extension AuthenticationClient
{
    //MARK:--检查密码强度
    /// Check Password Strength.
    /// 检查密码强度
    /// - parameter password: 密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 检查密码强度，详情请见: https://docs.authing.co/security/config-user-pool-password-level.html
    ///
    public func checkPasswordStrength(password: String, completion: @escaping ((GraphQLResult<CheckPasswordStrengthQuery.Data>) -> Void)) {
        Network.shared.apollo.fetch(query: CheckPasswordStrengthQuery(password: password), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
                
                print("\(#function) success")
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
    public func checkPasswordStrengthWithResult(password: String, completion: @escaping ((Result<GraphQLResult<CheckPasswordStrengthQuery.Data>, Error>) -> Void)) {
        Network.shared.apollo.fetch(query: CheckPasswordStrengthQuery(password: password), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    //MARK:--检测 Token 登录状态
    /// Check Login Status.
    /// 检测 Token 登录状态
    /// - parameter token: token 用户的登录凭证 token
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 检测 Token 登录状态
    ///
   
    @available(*, deprecated, message: "Use 'getCurrentUser(completion:)' instead")
    public func checkLoginStatus(token: String, completion: @escaping ((GraphQLResult<CheckLoginStatusQuery.Data>) -> Void)) {
//        UserDefaults.standard.setValue("", forKey: Config.keyAccessToken)
        Network.shared.apollo.fetch(query: CheckLoginStatusQuery(token: token), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
                
                print("\(#function) success")
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
    public func checkLoginStatusWithResult(token: String, completion: @escaping ((Result<GraphQLResult<CheckLoginStatusQuery.Data>, Error>) -> Void)) {
        UserDefaults.standard.setValue("", forKey: Config.keyAccessToken)
        Network.shared.apollo.fetch(query: CheckLoginStatusQuery(token: token), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
}
