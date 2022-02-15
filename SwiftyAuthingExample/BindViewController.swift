//
//  BindViewController.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/15.
//

import UIKit

class BindViewController: TempViewController {
    @IBAction func actionbindPhone(_ sender: Any) {
        self.bindPhone()
    }
    
    @IBAction func actionUnbindPhone(_ sender: Any) {
        self.UnbindPhone()
    }
    
    @IBAction func actionUnbindEmail(_ sender: Any) {
        self.UnbindEmail()
    }
    
    @IBAction func actionUpdateEmail(_ sender: Any) {
        self.updateEmail()
    }
    
    @IBAction func actionBindEmail(_ sender: Any) {
        self.bindEmail()
    }
    
    //MARK:--Net
    /// bind Phone
    /// 绑定手机号
    ///
    func bindPhone(){
        //Normal
        AuthenticationClient.shared.bindPhone(phone: textPhone.text!, phoneCode: textPhonecode.text!, completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.bindPhone ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
//        AuthenticationClient.shared.bindPhoneWithResult(phone: textPhone.text!, phoneCode: textPhonecode.text!, completion: { result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.bindPhone ?? "")
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
    
    /// unbind Phone
    /// 解绑手机号
    ///
    func UnbindPhone(){
        AuthenticationClient.shared.unbindPhone(completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.unbindPhone ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
//        AuthenticationClient.shared.unbindPhoneWithResult(completion: { result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print("unbindPhoneWithResult Success")
//                    print(status.data?.unbindPhone ?? "")
//                } else {
//                    //Failure
//                    print("unbindPhoneWithResult Failure")
//                    print(status.errors ?? "")
//                }
//                print(graphQLResult)
//            case .failure(let error):
//                print("unbindPhoneWithResult error")
//                print(error)
//            }
//        })
    }
    
    /// bind Email
    /// 绑定邮箱
    ///
    func bindEmail(){
        AuthenticationClient.shared.bindEmail(email: textEmail.text!, emailCode: textPhonecode.text!, completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.bindEmail ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// unbind Phone
    /// 解绑手机号
    ///
    func UnbindEmail(){
        //Normal
        AuthenticationClient.shared.unbindEmail(completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.unbindEmail ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        AuthenticationClient.shared.unbindEmailWithResult(completion: { result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.unbindEmail ?? "")
                } else {
                    //Failure
                    print(status.errors ?? "")
                }
                print(graphQLResult)
            case .failure(let error):
                print(error)
            }
        })
    }
    
    /// Update Email.
    /// 更新用户邮箱
    ///
    func updateEmail() {
        //Normal
        AuthenticationClient.shared.updateEmail(email: textEmail.text!, emailCode: textPhonecode.text!, oldEmail: textEmail.text!, oldEmailCode: textPhonecode.text!, completion: {status in
            if(status.errors == nil) {
                //Success
                print(status.data?.updateEmail ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
        AuthenticationClient.shared.updateEmailWithResult(email: textEmail.text!, emailCode: textPhonecode.text!, oldEmail: textEmail.text!, oldEmailCode: textPhonecode.text!, completion: {result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.updateEmail ?? "")
                } else {
                    //Failure
                    print(status.errors ?? "")
                }
                print(graphQLResult)
            case .failure(let error):
                print(error)
            }
        })
    }
}
