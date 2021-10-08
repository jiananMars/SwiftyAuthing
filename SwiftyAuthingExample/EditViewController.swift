//
//  EditViewController.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/15.
//

import UIKit

class EditViewController: TempViewController {
    @IBAction func actionBindEmail(_ sender: Any) {
//        self.bindEmail()
    }
    
    @IBAction func actionSendEmail(_ sender: Any) {
        self.sendEmail()
    }
    
    @IBAction func actionSetUdv(_ sender: Any) {
        self.setUdv()
    }
    
    @IBAction func actionRemoveUdv(_ sender: Any) {
        self.removeUdv()
    }
    
    @IBAction func actionResetPasswordByPhoneCode(_ sender: Any) {
        self.resetPasswordByPhoneCode()
    }
    
    @IBAction func actionResetPasswordByEmailCode(_ sender: Any) {
        self.resetPasswordByEmailCode()
    }
    
    @IBAction func actionUpdatePassword(_ sender: Any) {
        self.updatePassword()
    }
    
    @IBAction func actionUpdatePhone(_ sender: Any) {
        self.updatePhone()
    }
    
    @IBAction func actionRefreshToken(_ sender: Any) {
        self.refreshToken()
    }
    
    /// Send Email.
    /// 发送邮件
    ///
    func sendEmail() {
        //Normal
        self.client?.sendEmail(email: textEmail.text!, scene: EmailScene.resetPassword, completion: {status in
            if(status.errors == nil) {
                //Success
                print(status.data?.sendEmail ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
//        self.client?.sendEmailWithResult(email: textEmail.text!, scene: EmailScene.resetPassword, completion: {result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.sendEmail ?? "")
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
    
    /// set Udv
    /// 添加用户自定义数据
    ///
    func setUdv() {
        self.client?.setUdv(key: "fatherAge", value: "50", completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.setUdv ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// remove Udv
    /// 删除用户自定义数据
    ///
    func removeUdv() {
        self.client?.removeUdv(key: "fatherAge", completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.removeUdv ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// reset Password By PhoneCode
    /// 通过短信验证码重置密码
    ///
    func resetPasswordByPhoneCode(){
        self.client?.resetPasswordByPhoneCode(phone: textPhone.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.resetPassword ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// reset Password By EmailCode
    /// 通过邮件验证码重置密码
    ///
    func resetPasswordByEmailCode(){
        self.client?.resetPasswordByEmailCode(email: textEmail.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion:{ (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.resetPassword ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// update Password
    /// 更新用户密码
    ///
    func updatePassword() {
        self.client?.updatePassword(newPassword: textPassword.text!, completion:{ (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.updatePassword ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Update Phone.
    /// 更新用户手机号
    ///
    func updatePhone() {
        //Normal
        self.client?.updatePhone(phone: textPhone.text!, phoneCode: textPhonecode.text!, oldPhone: textPhone.text!, oldPhoneCode: textPhonecode.text!, completion: {status in
            if(status.errors == nil) {
                //Success
                print(status.data?.updatePhone ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
//        self.client?.updatePhoneWithResult(phone: textPhone.text!, phoneCode: textPhonecode.text!, oldPhone: textPhone.text!, oldPhoneCode: textPhonecode.text!, completion: {result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.updatePhone ?? "")
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
    
    func refreshToken(){
        self.client?.refreshToken(completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.refreshToken ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
}
