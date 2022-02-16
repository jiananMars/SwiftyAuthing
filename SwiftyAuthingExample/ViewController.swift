//
//  ViewController.swift
//  SwiftyAuthingExample
//
//  Created by Eric Woo on 2020/10/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textPhone: UITextField!
    @IBOutlet weak var textPhonecode: UITextField!
        
    var userid = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // 如在此类中调用用户 User 相关方法，需要在此设置此用户保存的有效的用户 AccessToken。
        // 如需变动用户 AccessToken，只需再次赋值即可。
        //AuthenticationClient.shared.token = "token"
    }
    
    //MARK: ---------- Action ----------
    @IBAction func action0(_ sender: Any) {
        //Test
        //self.listUdv()
        //self.setUdv()
        //self.bindPhone()
        //self.unbindPhone()
        //self.unbindEmail()
        //self.listOrg()
        //self.loginByLdap()
        //self.getCurrentUser()
        //self.userIdVerify()
        //self.userIdVerifyStatus()
        //self.socialLink()
    }
    
    @IBAction func action1(_ sender: Any) {
        self.registerByUsername()
    }
    
    @IBAction func action2(_ sender: Any) {
        self.registerByEmail()
    }
    
    @IBAction func action3(_ sender: Any) {
        let alertView = UIAlertView()  //定义一个弹出框

       alertView.title = "System Info"

       alertView.message = "Your Name is xw"
        
        alertView.addButton(withTitle: "ok")

       alertView.show()
    }
    
    @IBAction func action4(_ sender: Any) {
        self.sendSmsCode()
    }
    
    @IBAction func actionn5(_ sender: Any) {
        self.registerByPhoneCode()
    }
    
    @IBAction func action6(_ sender: Any) {
        self.loginByUsername()
    }
    
    @IBAction func action7(_ sender: Any) {
        self.loginByEmail()
    }
    
    @IBAction func action8(_ sender: Any) {
        self.loginByPhoneCode()
    }
    
    @IBAction func action9(_ sender: Any) {
        self.loginByPhonePassword()
    }
    
    @IBAction func actionLoginBySubAccount(_ sender: Any) {
        self.loginBySubAccount()
    }
    
    @IBAction func actionLoginByAD(_ sender: Any) {
        self.loginByAD()
    }
    
    @IBAction func actionWebView(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let webVC = storyboard.instantiateViewController(withIdentifier: "WebViewController")
        webVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        webVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(webVC, animated: true, completion: nil)
    }
    
    @IBAction func action10(_ sender: Any) {
//        self.logout()
//        self.presentingViewController
//        let loginViewController = self.storyboard！.instantiateViewControllerWithIdentifier（" loginViewController"）as ！ LoginViewController
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let httpVC = storyboard.instantiateViewController(withIdentifier: "HttpViewController")
        httpVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        httpVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(httpVC, animated: true, completion: nil)
        
    }
    
    @IBAction func actionJumpBindVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let bindVC = storyboard.instantiateViewController(withIdentifier: "BindViewController")
        bindVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        bindVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(bindVC, animated: true, completion: nil)
    }
    
    @IBAction func actionJumpSearchVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let searchVC = storyboard.instantiateViewController(withIdentifier: "SearchViewController")
        searchVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        searchVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(searchVC, animated: true, completion: nil)
    }
    
    @IBAction func actionJumpEditVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editVC = storyboard.instantiateViewController(withIdentifier: "EditViewController")
        editVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        editVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(editVC, animated: true, completion: nil)
    }
    
    @IBAction func action11(_ sender: Any) {
//        self.checkLoginStatus()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let checkVC = storyboard.instantiateViewController(withIdentifier: "CheckViewController")
        checkVC.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        checkVC.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        self.present(checkVC, animated: true, completion: nil)
    }
    
    @IBAction func action12(_ sender: Any) {
        self.loginByWeChatCode()
    }

    //MARK: ---------- Event ----------
    /// Register by Email and Password.
    /// 使用邮箱注册
    ///
    func registerByEmail() {

        AuthenticationClient.shared.registerByEmail(email: textEmail.text!, password: textPassword.text!, completion: {result in
                switch result {
                case .success(let graphQLResult):
                    print(graphQLResult)
                case .failure(let error):
                    print(error)
                }
        })
    }

    /// Register by Username and Password.
    /// 使用用户名注册
    ///
    func registerByUsername() {

        AuthenticationClient.shared.registerByUsername(username: textUsername.text!, password: textPassword.text!, completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.registerByUsername ?? "")
                    self.userid = status.data?.registerByUsername?.id ?? ""
                } else {
                    print(status.errors ?? "")
                }
                print(graphQLResult)
                
            case .failure(let error):
                print(error)
            }
        })
        
    }

    /// Register by Phone Number and SMS Code.
    /// 使用手机号注册
    ///
    func registerByPhoneCode() {
        
        AuthenticationClient.shared.registerByPhoneCode(phone: textPhone.text!, code: textPhonecode.text!, password: textPassword.text!, completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.registerByPhoneCode ?? "")
                    self.userid = status.data?.registerByPhoneCode?.id ?? ""
                } else {
                    print(status.errors ?? "")
                }
                print(graphQLResult)
                
            case .failure(let error):
                print(error)
            }
        })
        
    }
    
    
    /// Login by Email and Password.
    /// 使用邮箱登录
    ///
    func loginByEmail() {
        AuthenticationClient.shared.loginByEmail(email: textEmail.text!, password: textPassword.text!, completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.loginByEmail ?? "")
                    self.userid = status.data?.loginByEmail?.id ?? ""
                } else {
                    print(status.errors ?? "")
                }
                print(graphQLResult)
                
            case .failure(let error):
                print(error)
            }
        })
    }
    
    /// Login with Username and Password.
    /// 使用用户名登录
    func loginByUsername() {

        AuthenticationClient.shared.loginByUsername(username: textUsername.text!, password: textPassword.text!, completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.loginByUsername ?? "")
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

    
    /// Login by Phone Number and SMS Code.
    /// 使用手机号验证码登录
    ///
    func loginByPhoneCode() {

        AuthenticationClient.shared.loginByPhoneCode(phone: textPhone.text!, code: textPhonecode.text!, completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.loginByPhoneCode ?? "")
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
    
    /// Login by Phone Number and Password.
    /// 使用手机号密码登录
    ///
    func loginByPhonePassword() {

        AuthenticationClient.shared.loginByPhonePassword(phone: textPhone.text!, password: textPassword.text!, completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.loginByPhonePassword ?? "")
                } else {
                    //Failure
                    print(status.errors ?? "")
                    //print(status.errors?.first?.displayMessage)
                    //print(status.errors?.first?.displayCode)
                }
                print(graphQLResult)
            case .failure(let error):
                print(error)
            }
        })
    }
    
    /// Login by Phone Number and Password.
    /// 使用子账号密码登录
    ///
    func loginBySubAccount() {
        AuthenticationClient.shared.loginBySubAccount(username: textUsername.text!, password: textPassword.text!, completion: { (result) in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.loginBySubAccount ?? "")
                } else {
                    //Failure
                    print(status.errors ?? "")
                    //print(status.errors?.first?.displayMessage)
                    //print(status.errors?.first?.displayCode)
                }
                print(graphQLResult)
            case .failure(let error):
                print(error)
            }
        })
    }
    
    /// loginByLdap.
    /// 使用 LDAP 用户名登录
    ///
    func loginByLdap() {
        AuthenticationClient.shared.loginByLdap(username: textUsername.text!, password: textPassword.text!, completion: { result in
            print(result)
        })
    }
    
    
    /// Login by AD username and password.
    /// 使用AD 账号密码登录
    ///
    func loginByAD() {
        AuthenticationClient.shared.loginByAD(username: textUsername.text!, password: textPassword.text!) { (status) in
        }
    }

    /// Check Password Strength.
    /// 检查密码强度
    ///
    func checkPasswordStrength() {
        //Normal
//        AuthenticationClient.shared.checkPasswordStrength(password: textPassword.text!, completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.checkPasswordStrength ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.checkPasswordStrengthWithResult(password: textPassword.text!, completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.checkPasswordStrength ?? "")
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

    /// Send SMS Code to Phone Number.
    /// 发送短信验证码
    ///
    func sendSmsCode() {
        //Normal
        AuthenticationClient.shared.sendSmsCode(phone: textPhone.text!, completion: { status in
            print(status)
        })
        
        //With result
//        AuthenticationClient.shared.sendSmsCodeWithResult(phone: textPhone.text!, completion: { result in
//            print(result)
//        })
    }
    
    /// Reset Password by Phone Code.
    /// 通过短信验证码重置密码
    ///
    func resetPasswordByPhoneCode() {
        //Normal
//        AuthenticationClient.shared.resetPasswordByPhoneCode(phone: textPhone.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: {status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.resetPassword ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.resetPasswordByPhoneCodeWithResult(phone: textPhone.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: {result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.resetPassword ?? "")
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

    /// Reset Password by Email Code.
    /// 通过邮件验证码重置密码
    ///
    func resetPasswordByEmailCode() {
        //Normal
//        AuthenticationClient.shared.resetPasswordByEmailCode(email: textEmail.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: {status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.resetPassword ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.resetPasswordByEmailCodeWithResult(email: textEmail.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: {result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.resetPassword ?? "")
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

    
    /// Update Profile.
    /// 修改用户资料
    ///
    func updateProfile() {
        //Normal
//        AuthenticationClient.shared.updateProfile(nickname: textUsername.text!, completion: {status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.updateUser ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.updateProfileWithResult(nickname: textUsername.text!, completion: {result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.updateUser ?? "")
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

    
    /// Update Password.
    /// 更新用户密码
    ///
    func updatePassword() {
        //Normal
//        AuthenticationClient.shared.updatePassword(newPassword: textPassword.text!,oldPassword: textPassword.text!, completion: {status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.updatePassword ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.updatePasswordWithResult(newPassword: textPassword.text!,oldPassword: textPassword.text!, completion: {result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.updatePassword ?? "")
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
    
    ///Refresh Token.
    /// 刷新当前用户的 token
    ///
    func refreshToken() {
        //Normal
        AuthenticationClient.shared.refreshToken(completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.refreshToken ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
        AuthenticationClient.shared.refreshTokenWithResult(completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.refreshToken ?? "")
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
    
    
    /// Get Current User.
    /// 获取当前登录的用户信息
    ///
    func getCurrentUser() {
        //Normal
        AuthenticationClient.shared.getCurrentUser(completion: {status in
            if(status.errors == nil) {
                //Success
                print(status.data?.user ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
//        AuthenticationClient.shared.getCurrentUserWithResult(completion: {result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.user ?? "")
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
    
    
    /// Logout Current User.
    /// 退出登录
    ///
    func logout() {
        //Normal
//        AuthenticationClient.shared.logout(completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.updateUser ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
//        AuthenticationClient.shared.logoutWithResult(completion:{ result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.updateUser ?? "")
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
    
    /// bindPhone.
    /// 绑定手机号
    ///
    func bindPhone() {
        //Normal
//        AuthenticationClient.shared.bindPhone(phone: textPhone.text!, phoneCode: textPhonecode.text!, completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.bindPhone ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.bindPhoneWithResult(phone: textPhone.text!, phoneCode: textPhonecode.text!, completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.bindPhone ?? "")
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
    
    
    /// unbindEmail.
    /// 解绑邮箱
    ///
    func unbindEmail() {
        //Normal
//        AuthenticationClient.shared.unbindEmail(completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.unbindEmail ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.unbindEmailWithResult(completion:{ result in
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
    
    
    /// bindPhone.
    /// 绑定手机号
    ///
    func unbindPhone() {
        //Normal
//        AuthenticationClient.shared.unbindPhone(completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.unbindPhone ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.unbindPhoneWithResult(completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.unbindPhone ?? "")
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
    
    
    /// Set Udv.
    /// 添加自定义数据
    ///
    func setUdv() {
        //Normal
//        AuthenticationClient.shared.setUdv(key: "HelloDate", value: Date(), completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.setUdv ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        AuthenticationClient.shared.setUdvWithResult(key: "HelloDate", value: Date(), completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.setUdv ?? "")
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
    
    /// Remove Udv.
    /// 删除自定义数据
    ///
    func removeUdv() {
        //Normal
        AuthenticationClient.shared.removeUdv(key: "HelloDate", completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.removeUdv ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
        AuthenticationClient.shared.removeUdvWithResult(key: "HelloDate", completion:{ result in
            switch result {
            case .success(let graphQLResult):
                let status = graphQLResult
                if(status.errors == nil) {
                    //Success
                    print(status.data?.removeUdv ?? "")
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

    
    /// Login by WeChat Code.
    /// 通过微信认证码登陆
    ///
    func loginByWeChatCode() {
        //通过微信SDK返回的认证码登陆 https://docs.authing.cn/social-login/mobile/wechat.html
        let code = "code"
        //Normal
//        AuthenticationClient.shared.loginByWeChatCode(code: code, completion: { status in
//            print(status)
//        })
        
        //With result
        AuthenticationClient.shared.loginByWeChatCodeWithResult(code: code, completion: { result in
            print(result)
        })
    }
    
    
    /// User Id Verify.
    /// 实名认证 - 使用姓名，身份证号码，人脸图像，需要登录后调用
    ///
    func userIdVerify() {
        //*需要登录后调用
        
        //via faceImageURL
        AuthenticationClient.shared.userIdVerify(name: "张三", idCard: "123456", faceImageURL: URL(string: "http://xxx.jpg")!, completion: { result in
            print(result)
        })
        
        //via faceImageBase64, 如使用 UIImage 可以使用 getBase64FromImage 转换
//        AuthenticationClient.shared.userIdVerify(name: "张三", idCard: "123456", faceImageBase64: "data:image/jpeg;base64,/9j/4QFmRXhpZgA", completion: { result in
//            print(result)
//        })
        
//        success msg
//        {
//            "code": 200,
//            "message": "实名认证成功"
//        }
    }
    
    /// Get Base64 from UIImage
    /// UIImage 转 Base64
    ///
    func getBase64FromImage(_ name: String) -> String{
        let imageOrigin = UIImage(named: name)
        if let image = imageOrigin {
            let dataTmp = image.pngData()
            if let data = dataTmp {
                let imageStrTT = data.base64EncodedString()
                return imageStrTT
            }
        }
        return ""
    }

    /// User Id Verify Status.
    /// 查询实名认证状态，需要登录后调用
    ///
    func userIdVerifyStatus() {
        //*需要登录后调用
        AuthenticationClient.shared.userIdVerifyStatus(completion: { result in
            print(result)
        })
        
//        success msg
//        {
//            "code": 200,
//            "data": true,
//            "message": "查询实名认证状态成功"
//        }
    }
    
    /// Social Link.
    /// 将社交账号绑定到主账号
    ///
    func socialLink() {
        let primaryUserToken = ""
        let secondaryUserToken = ""

//        //*需要登录后调用，primaryUserToken 为当前登录用户的 token
//        AuthenticationClient.shared.socialLink(secondaryUserToken: secondaryUserToken, completion: { result in
//            print(result)
//        })
        
        AuthenticationClient.shared.socialLink(primaryUserToken: primaryUserToken, secondaryUserToken: secondaryUserToken, completion: { result in
            print(result)
        })
        
//        success msg
//        {
//          "code": 200,
//          "message": "绑定成功"
//        }
    }
    
}

