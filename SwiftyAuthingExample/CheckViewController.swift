//
//  CheckViewController.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/15.
//

import UIKit

class CheckViewController: TempViewController {
    @IBAction func actionCheckPassword(_ sender: Any) {
        self.checkPassword()
    }
    
    @IBAction func actionCheckLoginStatus(_ sender: Any) {
        self.checkLoginStatus()
    }
    
    /// Check Password Strength
    /// 检查密码强度
    ///
    func checkPassword(){
        //Normal
        AuthenticationClient.shared.checkPasswordStrength(password: textPassword.text!, completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.checkPasswordStrength ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
//        AuthenticationClient.shared.checkPasswordStrengthWithResult(password: textPassword.text!, completion:{ result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.checkPasswordStrength ?? "")
//                } else {
//                    //Failure
//                    print(status.errors ?? "")
//                }
//                print(graphQLResult)
//            case .failure(let error):
//                print(error)
//            }
//        })
    }
    
    /// Check Login Status.
    /// 检测 Token 登录状态
    ///
    func checkLoginStatus() {
        // Change your token here
        
        let token = AuthenticationClient.shared.userDetaultsToken ?? ""
        print("token: " + token)
        
        //Normal
        AuthenticationClient.shared.checkLoginStatus(token: token, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.checkLoginStatus ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
//        AuthenticationClient.shared.checkLoginStatusWithResult(token: token, completion:{ result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.checkLoginStatus ?? "")
//                } else {
//                    //Failure
//                    print(status.errors ?? "")
//                }
//                print(graphQLResult)
//            case .failure(let error):
//                print(error)
//            }
//        })
    }
}

