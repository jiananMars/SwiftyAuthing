//
//  AuthingHttpClient.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/24.
//



import Foundation
import Alamofire

public let AHC = AuthingHttpClient.default

public class AuthingHttpClient
{
    public static let `default` = AuthingHttpClient()
    
    //MARK: -- Request With Completion Callback
    func requestWithResponse<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil, completion: @escaping(Any) -> Void)  {
        AF.request(convertible,method: method,parameters: parameters).responseJSON { (response) in
            return completion(response)
        }
    }
    
    func requestWithResponse<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil,
                                             encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                             headers: HTTPHeaders? = nil,
                                             completion: @escaping(Any) -> Void)  {
        AF.request(convertible, method: method, parameters: parameters, encoder: encoder, headers: headers).responseJSON {
            response in
            return completion(response)
        }
    }
    
    func requestNoHeader<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil, completion: @escaping(Any) -> Void)  {
        AHC.request(convertible, method: method, parameters: parameters, encoder: URLEncodedFormParameterEncoder.default, headers: nil) { (result) in
            completion(result)
        }
    }
    
    func request<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil,
                                             completion: @escaping(Any) -> Void)  {
        AHC.request(convertible, method: method, parameters: parameters, encoder: URLEncodedFormParameterEncoder.default, headers: Config.keyHeaders) { (result) in
            completion(result)
        }
    }
    
    func request<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil,
                                             encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                             headers: HTTPHeaders? = nil,
                                             completion: @escaping(Any) -> Void)  {
        AF.request(convertible, method: method, parameters: parameters, encoder: encoder, headers: headers).responseJSON {
            response in
            switch response.result {
            case .success(let data):
                if let dicData = data as? [String: Any]
                {
                    if let code = (dicData["code"] ?? dicData["statusCode"]) as? NSNumber {
                        if code.intValue == 200 {
                            //print("Net access code is 200,success")
                        }
                        else
                        {
                            let errorMessage = dicData["message"] as? String
                            
                            print("Net access code is error.Message : \(errorMessage!)")
                        }
                    }
                    else
                    {
                        print("Net access code is wrong type")
                    }
                }
                else
                {
                    print("Net access data is wrong type")
                }
                
                return completion(data)
            case .failure(let error):
                return completion(error)
            }
        }
    }
    
    //MARK: -- Request With DataRequest
    func dataRequest<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil) -> DataRequest {
        return AHC.dataRequest(convertible, method: method, parameters: parameters,encoder: URLEncodedFormParameterEncoder.default,headers: Config.keyHeaders)
    }
    
    func dataRequest<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil,
                                             encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                             headers: HTTPHeaders? = nil) -> DataRequest {
        return AF.request(convertible, method: method, parameters: parameters, encoder: encoder, headers: headers)
    }
}

