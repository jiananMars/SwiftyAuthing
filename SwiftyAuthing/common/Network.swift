//
//  Network.swift
//  SwiftyAuthing
//
//  Created by Eric Woo on 2020/11/1.
//

import Apollo
import Foundation

/// Init Network without Header.
///
//public class Network {
//    public var host = Config.host
//    public static let shared = Network()
//    private(set) lazy var apollo = ApolloClient(
//        url: URL(string: host)!
//    )
//}

/// Init Network with Header.
///
public class Network {
    public var host = Config.host
    public static let shared = Network()
    private(set) lazy var apollo: ApolloClient = {
        let client = URLSessionClient()
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = NetworkInterceptorProvider(client: client, store: store)
        let url = URL(string: host)!
        let transport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                     endpointURL: url)
        return ApolloClient(networkTransport: transport, store: store)
    }()
}


/// NetworkInterceptorProvider.
///
public class NetworkInterceptorProvider: LegacyInterceptorProvider {
    public override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(CustomInterceptor(), at: 0)
        return interceptors
    }
}

/// CustomInterceptor.
///
public class CustomInterceptor: ApolloInterceptor {
    public let token = UserDefaults.standard.string(forKey: Config.keyAccessToken) ?? ""
    public let userpoolidHeader = Config.userpoolidHeader
    public let userpoolid = UserDefaults.standard.string(forKey: Config.keyUserPoolId) ?? ""
    public let appidHeader = Config.appidHeader
    public let appid = UserDefaults.standard.string(forKey: Config.keyAppId) ?? ""
    
    public func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
        request.addHeader(name: "Authorization", value: "Bearer " + token)
        request.addHeader(name: userpoolidHeader, value: userpoolid)
        if(appid.count > 0) {
            request.addHeader(name: appidHeader, value: appid)
        }
        chain.proceedAsync(request: request,
                           response: response,
                           completion: completion)
    }
}
