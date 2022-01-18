//
//  AuthenticationClient+Search.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/10.
//
import Apollo
import Alamofire
import Foundation

extension AuthenticationClient
{
    /// list Authorized Resources.
    /// 获取当前用户的自定义数据列表
    ///
    /// - parameter namespace: 权限分组的 code
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取当前用户的自定义数据列表
    ///
    public func listAuthorizedResources(completion: @escaping ((GraphQLResult<ListUserAuthorizedResourcesQuery.Data>) -> Void)) {
        let id = self.getUserId()
        
        Network.shared.apollo.fetch(query: ListUserAuthorizedResourcesQuery(id: id), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                print("\(#function) success")
                completion(graphQLResult)
            }
        }
    }
    
    /// List Udv.
    /// 获取当前用户的自定义数据列表
    ///
    /// - parameter namespace: 权限分组的 code
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取当前用户的自定义数据列表
    ///
    public func listAuthorizedResourcesWithResult(completion: @escaping ((Result<GraphQLResult<ListUserAuthorizedResourcesQuery.Data>, Error>) -> Void)) {
        let id = self.getUserId()
        
        Network.shared.apollo.fetch(query: ListUserAuthorizedResourcesQuery(id: id), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            completion(result)
            
            print("\(#function) success")
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
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let userPoolId = self.userPoolId ?? ""
        Config.domain = self.domain
        let url = Config.orgs
        let headers: HTTPHeaders = [
            Config.userpoolidHeader: userPoolId,
            Config.authorizationHeader: token
        ]
        AF.request(url, method: .get, headers: headers).responseJSON { response in
            switch response.result {
            case .success(let value):
                completion(value)
                
                print("\(#function) success")
            case .failure(let error):
                print(error)
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
    public func listOrgWithResult(completion: @escaping(Any) -> Void) {
        let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
        let userPoolId = self.userPoolId ?? ""
        Config.domain = self.domain
        let url = Config.orgs
        let headers: HTTPHeaders = [
            Config.userpoolidHeader: userPoolId,
            Config.authorizationHeader: token
        ]
        AF.request(url, method: .get, headers: headers).responseJSON { response in
            completion(response.result)
            
            print("\(#function) success")
        }
    }
    
    //MARK:--获取用户信息
    /// Get User Id.
    /// 通过 token 获取 User Id。
    /// - parameter token: 用户 Token
    /// - returns: User Id
    ///
    /// 通过 token 获取 User Id。
    ///
    public func getUserId() -> String {
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
        Network.shared.apollo.fetch(query: UserQuery(id: id), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
                
                print("\(#function) success")
            }
        }
    }
    
    /// Get Current User.
    /// 获取当前登录的用户信息
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 获取当前登录的用户信息
    ///
    public func getCurrentUserWithResult(completion: @escaping ((Result<GraphQLResult<UserQuery.Data>, Error>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.fetch(query: UserQuery(id: id), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            completion(result)
            
            print("\(#function) success")
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
        Network.shared.apollo.fetch(query: UdvQuery(targetType: UDFTargetType.user, targetId: id), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            switch result {
            case .failure(let error):
                print("Failure: \(error)")
            case .success(let graphQLResult):
                completion(graphQLResult)
                
                print("\(#function) success")
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
    public func listUdvWithResult(completion: @escaping ((Result<GraphQLResult<UdvQuery.Data>, Error>) -> Void)) {
        let id = self.getUserId()
        Network.shared.apollo.fetch(query: UdvQuery(targetType: UDFTargetType.user, targetId: id), cachePolicy: self.cachePolicy ?? .fetchIgnoringCacheCompletely) { result in
            completion(result)
            
            print("\(#function) success")
        }
    }
    
    /// computedPasswordSecurityLevel.
    /// 计算密码安全等级
    /// - parameter proclaimedPassword: 明文密码
    /// - parameter completion: 服务器端返回的数据
    /// - returns: N/A
    ///
    /// 计算密码安全等级
    ///
    public func computedPasswordSecurityLevel(proclaimedPassword: String ,completion:@escaping(Int) ->Void)
    {
        let highPattern = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[^]{12,}$/g"
        let highRegex = try? NSRegularExpression(pattern: highPattern, options: [])
        
        let middlePattern = "^(?=.*[a-zA-Z])(?=.*\\d)[^]{8,}$/g"
        let middleRegex = try? NSRegularExpression(pattern: middlePattern, options: [])
        /// 进行正则匹配
        if let results = highRegex?.matches(in: proclaimedPassword, options: [], range: NSRange(location: 0, length: proclaimedPassword.count)), results.count != 0 {
            completion(1)
        }
        else if let results = middleRegex?.matches(in: proclaimedPassword, options: [], range: NSRange(location: 0, length: proclaimedPassword.count)), results.count != 0 {
            completion(2)
        }
        else
        {
            completion(3)
        }
    }
}
