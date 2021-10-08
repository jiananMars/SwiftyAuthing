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
    
    /// Config Information, change your UserPoolId
    /// Find in https://console.authing.cn Setting - Basic Information & Application.
    let userPoolId = "6131fcde0fcce7d79ea8dc46"
    let appId = "6131fe56c6ddf9a514beb354"
    
    //Private cloud domain
    //let domain = "https://core.xxxx.cn"
    
    var client: AuthenticationClient?
    var userid = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //使用 userPoolId 初始化
        //self.client = AuthenticationClient(userPoolId: userPoolId)
        
        //使用 userPoolId 和 appId 同时初始化
        self.client = AuthenticationClient(userPoolId: userPoolId, appId: appId)

        //使用 userPoolId, appId, domain 同时初始化
        //self.client = AuthenticationClient(userPoolId: userPoolId, appId: appId, domain: domain)
       
        // 如在此类中调用用户 User 相关方法，需要在此设置此用户保存的有效的用户 AccessToken。
        // 如需变动用户 AccessToken，只需再次赋值即可。
        //self.client?.token = "token"
    }
    
    
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
    
    /// Login by Phone Number and Password.
    /// 使用子账号密码登录
    ///
    func loginBySubAccount() {
        self.client?.loginBySubAccount(username: textUsername.text!, password: textPassword.text!, completion: { (status) in
            if(status.errors == nil) {
                //Success
                print(status.data?.loginBySubAccount ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }

        })
    }
    
    /// Login by AD username and password.
    /// 使用AD 账号密码登录
    ///
    func loginByAD() {
        self.client?.loginByAD(username: textUsername.text!, password: textPassword.text!) { (status) in
            let statusDic = status as! NSDictionary
            print(statusDic)
        }
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

    
    /// Register by Email and Password.
    /// 使用邮箱注册
    ///
    func registerByEmail() {
        //Normal
        self.client?.registerByEmail(email: textEmail.text!, password: textPassword.text!, completion: {status in
            if(status.errors == nil) {
                //Success
                print(status.data?.registerByEmail ?? "")
                self.userid = status.data?.registerByEmail?.id ?? ""
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }

    /// Register by Username and Password.
    /// 使用用户名注册
    ///
    func registerByUsername() {
        //Normal
        self.client?.registerByUsername(username: textUsername.text!, password: textPassword.text!, completion:{status in
            if(status.errors == nil) {
                //Success
                print(status.data?.registerByUsername ?? "")
                self.userid = status.data?.registerByUsername?.id ?? ""
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
//        //With result
//        self.client?.registerByUsernameWithResult(username: textUsername.text!, password: textPassword.text!, completion:{result in
//            switch result {
//            case .success(let graphQLResult):
//                print(graphQLResult)
//            case .failure(let error):
//                print(error)
//            }
//        })
    }

    /// Register by Phone Number and SMS Code.
    /// 使用手机号注册
    ///
    func registerByPhoneCode() {
        
        //Normal
//        self.client?.registerByPhoneCode(phone: textPhone.text!, code: textPhonecode.text!, completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.registerByPhoneCode ?? "")
//                self.userid = status.data?.registerByPhoneCode?.id ?? ""
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.registerByPhoneCodeWithResult(phone: textPhone.text!, code: textPhonecode.text!, completion:{ result in
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
    
    /// Login with Username and Password.
    /// 使用用户名登录
    func loginByUsername() {
        //Normal
        self.client?.loginByUsername(username: textUsername.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.loginByUsername ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
        self.client?.loginByUsernameWithResult(username: textUsername.text!, password: textPassword.text!, completion:{ result in
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
    
    /// Login by Email and Password.
    /// 使用邮箱登录
    ///
    func loginByEmail() {
        //Normal
        self.client?.loginByEmail(email: textEmail.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.loginByEmail ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
//        //With result
//        self.client?.loginByEmailWithResult(email: textEmail.text!, password: textPassword.text!, completion:{ result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.loginByEmail ?? "")
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
    
    /// Login by Phone Number and SMS Code.
    /// 使用手机号验证码登录
    ///
    func loginByPhoneCode() {
        //Normal
        self.client?.loginByPhoneCode(phone: textPhone.text!, code: textPhonecode.text!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.loginByPhoneCode ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
//        //With result
//        self.client?.loginByPhoneCodeWithResult(phone: textPhone.text!, code: textPhonecode.text!, completion:{ result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.loginByPhoneCode ?? "")
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
    
    /// Login by Phone Number and Password.
    /// 使用手机号密码登录
    ///
    func loginByPhonePassword() {
        //Normal
        self.client?.loginByPhonePassword(phone: textPhone.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.loginByPhonePassword ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
//        self.client?.loginByPhonePasswordWithResult(phone: textPhone.text!, password: textPassword.text!, completion:{ result in
//            switch result {
//            case .success(let graphQLResult):
//                let status = graphQLResult
//                if(status.errors == nil) {
//                    //Success
//                    print(status.data?.loginByPhonePassword ?? "")
//                } else {
//                    //Failure
//                    print(status.errors ?? "")
//                    //print(status.errors?.first?.displayMessage)
//                    //print(status.errors?.first?.displayCode)
//                }
//                print(graphQLResult)
//            case .failure(let error):
//                print(error)
//            }
//        })
    }

    /// Check Password Strength.
    /// 检查密码强度
    ///
    func checkPasswordStrength() {
        //Normal
//        self.client?.checkPasswordStrength(password: textPassword.text!, completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.checkPasswordStrength ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.checkPasswordStrengthWithResult(password: textPassword.text!, completion:{ result in
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
        self.client?.sendSmsCode(phone: textPhone.text!, completion: { status in
            print(status)
        })
        
        //With result
//        self.client?.sendSmsCodeWithResult(phone: textPhone.text!, completion: { result in
//            print(result)
//        })
    }
    
    /// Reset Password by Phone Code.
    /// 通过短信验证码重置密码
    ///
    func resetPasswordByPhoneCode() {
        //Normal
//        self.client?.resetPasswordByPhoneCode(phone: textPhone.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: {status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.resetPassword ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.resetPasswordByPhoneCodeWithResult(phone: textPhone.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: {result in
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
//        self.client?.resetPasswordByEmailCode(email: textEmail.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: {status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.resetPassword ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.resetPasswordByEmailCodeWithResult(email: textEmail.text!, code: textPhonecode.text!, newPassword: textPassword.text!, completion: {result in
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
//        self.client?.updateProfile(nickname: textUsername.text!, completion: {status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.updateUser ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.updateProfileWithResult(nickname: textUsername.text!, completion: {result in
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
//        self.client?.updatePassword(newPassword: textPassword.text!,oldPassword: textPassword.text!, completion: {status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.updatePassword ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.updatePasswordWithResult(newPassword: textPassword.text!,oldPassword: textPassword.text!, completion: {result in
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
        self.client?.refreshToken(completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.refreshToken ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
        self.client?.refreshTokenWithResult(completion:{ result in
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
        self.client?.getCurrentUser(completion: {status in
            if(status.errors == nil) {
                //Success
                print(status.data?.user ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
//        self.client?.getCurrentUserWithResult(completion: {result in
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
//        self.client?.logout(completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.updateUser ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
//        self.client?.logoutWithResult(completion:{ result in
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
//        self.client?.bindPhone(phone: textPhone.text!, phoneCode: textPhonecode.text!, completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.bindPhone ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.bindPhoneWithResult(phone: textPhone.text!, phoneCode: textPhonecode.text!, completion:{ result in
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
//        self.client?.unbindEmail(completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.unbindEmail ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.unbindEmailWithResult(completion:{ result in
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
//        self.client?.unbindPhone(completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.unbindPhone ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.unbindPhoneWithResult(completion:{ result in
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
//        self.client?.setUdv(key: "HelloDate", value: Date(), completion:{ status in
//            if(status.errors == nil) {
//                //Success
//                print(status.data?.setUdv ?? "")
//            } else {
//                //Failure
//                print(status.errors ?? "")
//            }
//        })
        
        //With result
        self.client?.setUdvWithResult(key: "HelloDate", value: Date(), completion:{ result in
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
        self.client?.removeUdv(key: "HelloDate", completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.removeUdv ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
        
        //With result
        self.client?.removeUdvWithResult(key: "HelloDate", completion:{ result in
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
    
    /// loginByLdap.
    /// 使用 LDAP 用户名登录
    ///
    func loginByLdap() {
        //Normal
//        self.client?.loginByLdap(username: textUsername.text!, password: textPassword.text!, completion: { status in
//            print(status)
//        })
        
        //With result
        self.client?.loginByLdapWithResult(username: textUsername.text!, password: textPassword.text!, completion: { result in
            print(result)
        })
    }
    
    
    /// Login by WeChat Code.
    /// 通过微信认证码登陆
    ///
    func loginByWeChatCode() {
        //通过微信SDK返回的认证码登陆 https://docs.authing.cn/social-login/mobile/wechat.html
        let code = "code"
        //Normal
//        self.client?.loginByWeChatCode(code: code, completion: { status in
//            print(status)
//        })
        
        //With result
        self.client?.loginByWeChatCodeWithResult(code: code, completion: { result in
            print(result)
        })
    }
    
    
    /// User Id Verify.
    /// 实名认证 - 使用姓名，身份证号码，人脸图像，需要登录后调用
    ///
    func userIdVerify() {
        //*需要登录后调用
        
        //via faceImageURL
        self.client?.userIdVerify(name: "张三", idCard: "123456", faceImageURL: URL(string: "http://xxx.jpg")!, completion: { result in
            print(result)
        })
        
        //via faceImageBase64, 如使用 UIImage 可以使用 getBase64FromImage 转换
//        self.client?.userIdVerify(name: "张三", idCard: "123456", faceImageBase64: "data:image/jpeg;base64,/9j/4QFmRXhpZgA", completion: { result in
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
        self.client?.userIdVerifyStatus(completion: { result in
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
//        self.client?.socialLink(secondaryUserToken: secondaryUserToken, completion: { result in
//            print(result)
//        })
        
        self.client?.socialLink(primaryUserToken: primaryUserToken, secondaryUserToken: secondaryUserToken, completion: { result in
            print(result)
        })
        
//        success msg
//        {
//          "code": 200,
//          "message": "绑定成功"
//        }
    }
    
}

