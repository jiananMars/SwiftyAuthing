//
//  AuthenticationClient.swift
//  SwiftyAuthing
//
//  Created by Eric Woo on 2020/10/27.
//
//  Reference https://docs.authing.cn/docs/sdk/open-graphql.html
//

import Apollo
import Alamofire
//import SwiftyRSA
import Foundation

public class Config {
    public static let domain = "https://core.authing.cn"
    public static let host = domain + "/graphql"
    public static let publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC4xKeUgQ+Aoz7TLfAfs9+paePb" +
        "5KIofVthEopwrXFkp8OCeocaTHt9ICjTT2QeJh6cZaDaArfZ873GPUn00eOIZ7Ae" +
        "+TiA2BKHbCvloW3w5Lnqm70iSsUi5Fmu9/2+68GZRH9L7Mlh8cFksCicW2Y2W2uM" +
        "GKl64GDcIq3au+aqJQIDAQAB"
    public static let photo = "https://files.authing.co/authing-console/default-user-avatar.png"
}

public class Network {
    public static let shared = Network()
    private(set) lazy var apollo = ApolloClient(
        url: URL(string: host)!
    )
    public var host = Config.host
}

//class Network {
//    static let shared = Network()
//    private(set) lazy var apollo: ApolloClient = {
//        let client = URLSessionClient()
//        let cache = InMemoryNormalizedCache()
//        let store = ApolloStore(cache: cache)
//        let provider = NetworkInterceptorProvider(client: client, store: store)
//        let url = URL(string: host)!
//        let transport = RequestChainNetworkTransport(interceptorProvider: provider,
//                                                     endpointURL: url)
//        return ApolloClient(networkTransport: transport, store: store)
//    }()
//    var host = Config.host
//}
//
//class NetworkInterceptorProvider: LegacyInterceptorProvider {
//    override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
//        var interceptors = super.interceptors(for: operation)
//        interceptors.insert(CustomInterceptor(), at: 0)
//        return interceptors
//    }
//}
//
//class CustomInterceptor: ApolloInterceptor {
//    let token = UserDefaults.standard.string(forKey: "accessToken") ?? ""
//    func interceptAsync<Operation: GraphQLOperation>(
//        chain: RequestChain,
//        request: HTTPRequest<Operation>,
//        response: HTTPResponse<Operation>?,
//        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
//        request.addHeader(name: "Authorization", value: "Bearer: \(token)")
//        chain.proceedAsync(request: request,
//                           response: response,
//                           completion: completion)
//    }
//}

public class AuthenticationClient {
    
    /// userPoolId: The user pool Id.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
    public var userPoolId: String?
    
    /// secret: The secret of user pool.
    /// Find in https://console.authing.cn Setting - Basic Information.
    ///
    public var secret: String?
    
    /// accessToken: The AccessToken of user pool.
    ///
    public var accessToken: String?
    
    
    /// 初始化
    /// userPoolId: The user pool Id.
    /// secret: The secret of user pool.
    /// Find in https://console.authing.cn Setting - Basic Information.
    /// - returns : N/A.
    ///
    public init(userPoolId: String, secret: String) {
        self.userPoolId = userPoolId
        self.secret = secret
        self.getClientWhenSdkInit()
    }
    
    /// 初始化
    /// userPoolId: The user pool Id.
    /// secret: The secret of user pool.
    /// host: The host of user pool.
    /// Find in https://console.authing.cn Setting - Basic Information.
    /// - returns : N/A.
    ///
    public init(userPoolId: String, secret: String, host: String) {
        self.userPoolId = userPoolId
        self.secret = secret
        Network.shared.host = host
        self.getClientWhenSdkInit()
    }
    
    /// 初始化 SDK
    ///
    public func getClientWhenSdkInit() {
        Network.shared.apollo.fetch(query: GetClientWhenSdkInitQuery(secret: self.secret, clientId: self.userPoolId)) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                guard let status = graphQLResult.data?.getClientWhenSdkInit else { return }
                self.accessToken = status.accessToken
                UserDefaults.standard.setValue(status.accessToken, forKey: "accessToken")
            }
        }
    }
    
    /// 加密 PKCS1v1.5
    ///
    public func encrypt(msg: String) -> String {
        let publicKey = try! PublicKey(base64Encoded: Config.publicKey)
        let clear = try! ClearMessage(string: msg, using: .utf8)
        let encrypted = try! clear.encrypted(with: publicKey, padding: .PKCS1)
        return encrypted.base64String
    }
    
    /// 通过用户名注册
    ///
    public func registerByUsername(username: String, password: String, completion: @escaping ((GraphQLResult<RegisterMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterMutation(password: encrypt(msg: password), registerInClient: self.userPoolId!, username: username, photo: Config.photo), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                //guard let status = graphQLResult.data?.register else { return }
                completion(graphQLResult)
            }
        }
    }
    
    
    /// 通过邮箱注册
    ///
    public func registerByEmail(email: String, password: String, completion: @escaping ((GraphQLResult<RegisterMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: RegisterMutation(email: email, password: encrypt(msg: password), registerInClient: self.userPoolId!, photo: Config.photo), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                //guard let status = graphQLResult.data?.register else { return }
                completion(graphQLResult)
            }
        }
    }
    
    /// 发送验证邮件
    ///
    public func sendVerifyEmail(mail: String, completion: @escaping ((GraphQLResult<SendVerifyEmailMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: SendVerifyEmailMutation(email: mail, client: self.userPoolId!), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                //guard let status = graphQLResult.data?.sendVerifyEmail else { return }
                completion(graphQLResult)
            }
        }
    }
    
    /// 发送手机验证码
    ///
    public func sendSmsCode(phone: String, completion: @escaping(Any) -> Void) {
        let url = Config.domain + "/send_smscode/\(phone)/\(self.userPoolId!)"
        AF.request(url, method: .get).responseJSON { response in
            switch response.result {
            case .success(let value):
                completion(value)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    /// 通过手机号验证码注册
    ///
    public func registerByPhoneCode(phone: String, phoneCode: Int, completion: @escaping ((GraphQLResult<LoginByPhoneCodeMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhoneCodeMutation(phone: phone, phoneCode: phoneCode, registerInClient: self.userPoolId!), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                //guard let status = graphQLResult.data?.login else { return }
                completion(graphQLResult)
            }
        }
    }
    
    /// 通过用户名和密码登录
    ///
    public func loginByUsername(username: String, password: String, completion: @escaping ((GraphQLResult<LoginByUsernameMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByUsernameMutation(username: username, password: encrypt(msg: password), registerInClient: self.userPoolId!), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                //guard let status = graphQLResult.data?.login else { return }
                completion(graphQLResult)
            }
        }
    }
    
    /// 通过邮箱密码登录
    ///
    public func loginByEmail(email: String, password: String, completion: @escaping ((GraphQLResult<LoginMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginMutation(email: email, password: encrypt(msg: password), registerInClient: self.userPoolId!), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                //                guard let status = graphQLResult.data?.login else { return }
                completion(graphQLResult)
            }
        }
    }
    
    /// 通过手机号和验证码登录
    ///
    public func loginByPhoneCode(phone: String, phoneCode: Int, completion: @escaping ((GraphQLResult<LoginByPhoneCodeMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhoneCodeMutation(phone: phone, phoneCode: phoneCode, registerInClient: self.userPoolId!), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                //guard let status = graphQLResult.data?.login else { return }
                completion(graphQLResult)
            }
        }
    }
    
    /// 通过手机号和密码登录
    ///
    public func loginByPhonePassword(phone: String, password: String, completion: @escaping ((GraphQLResult<LoginByPhonePasswordMutation.Data>) -> Void)) {
        Network.shared.apollo.perform(mutation: LoginByPhonePasswordMutation(phone: phone, password: encrypt(msg: password), registerInClient: self.userPoolId!), queue: DispatchQueue.main) { result in
            switch result {
            case .failure(let error):
                print("Something bad happened \(error)")
            case .success(let graphQLResult):
                //guard let status = graphQLResult.data?.login else { return }
                completion(graphQLResult)
            }
        }
    }
    
    /// 注销当前用户（TBD)
    ///
    public func logout() {
        
    }

    
}
