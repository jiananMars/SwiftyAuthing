//
//  ViewController.swift
//  SwiftyAuthingExample
//
//  Created by Eric Woo on 2020/10/30.
//

import UIKit
import SwiftyAuthing

class ViewController: UIViewController {
    
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textPhone: UITextField!
    @IBOutlet weak var textPhonecode: UITextField!
    
    /// Config Information, change your UserPoolId, Secret, and Host
    /// Find in https://console.authing.cn Setting - Basic Information.
    let userPoolId = "5f967caecd744579cccf4bcf"
    let secret = "3eb5b702173678c467e6cde8f0c3e963"
    let host = "https://core.authing.cn/graphql"
    
    var client: AuthenticationClient?
    var userid = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.client = AuthenticationClient(userPoolId: userPoolId, secret: secret, host: host)
    }
    
    @IBAction func action0(_ sender: Any) {
        self.getClientWhenSdkInit()
    }
    
    @IBAction func action1(_ sender: Any) {
        self.registerByUsername()
    }
    
    @IBAction func action2(_ sender: Any) {
        self.registerByEmail()
    }
    
    @IBAction func action3(_ sender: Any) {
        self.sendVerifyEmail()
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
    
    @IBAction func action10(_ sender: Any) {
        self.logout()
    }
    
    @IBAction func action11(_ sender: Any) {
        self.checkLoginStatus()
    }
    
    @IBAction func action12(_ sender: Any) {
        self.loginByWeChatCode()
    }
    
    /// Init SDK and get AccessToken.
    ///
    func getClientWhenSdkInit() {
        self.client?.getClientWhenSdkInit(completion:{status in
            if(status.errors == nil) {
                //Success
                guard let result = status.data?.getClientWhenSdkInit else { return }
                print(result.accessToken ?? "")
                print(result)
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Register by Username and Password.
    ///
    func registerByUsername() {
        self.client?.registerByUsername(username: textUsername.text!, password: textPassword.text!, completion:{status in
            if(status.errors == nil) {
                //Success
                print(status.data?.register ?? "")
                self.userid = status.data?.register?._id ?? ""
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Register by Email and Password.
    ///
    func registerByEmail() {
        self.client?.registerByEmail(email: textEmail.text!, password: textPassword.text!, completion: {status in
            if(status.errors == nil) {
                //Success
                print(status.data?.register ?? "")
                self.userid = status.data?.register?._id ?? ""
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    
    /// Send Verify Email.
    ///
    func sendVerifyEmail() {
        self.client?.sendVerifyEmail(mail: textEmail.text!, completion: {status in
            if(status.errors == nil) {
                //Success
                print(status.data?.sendVerifyEmail ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    
    /// Send SMS Code to Phone Number.
    ///
    func sendSmsCode() {
        self.client?.sendSmsCode(phone: textPhone.text!, completion: { status in
            print(status)
        })
    }
    
    /// Register by Phone Number and SMS Code.
    ///
    func registerByPhoneCode() {
        self.client?.registerByPhoneCode(phone: textPhone.text!, phoneCode: Int(textPhonecode.text!)!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.login ?? "")
                self.userid = status.data?.login?._id ?? ""
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Login with Username and Password.
    ///
    func loginByUsername() {
        self.client?.loginByUsername(username: textUsername.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.login ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Login by Email and Password.
    ///
    func loginByEmail() {
        self.client?.loginByEmail(email: textEmail.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.login ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Login by Phone Number and SMS Code.
    ///
    func loginByPhoneCode() {
        self.client?.loginByPhoneCode(phone: textPhone.text!, phoneCode: Int(textPhonecode.text!)!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.login ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Login by Phone Number and Password.
    ///
    func loginByPhonePassword() {
        self.client?.loginByPhonePassword(phone: textPhone.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.login ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Check Login Status.
    ///
    func checkLoginStatus() {
        self.client?.checkLoginStatus(completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.checkLoginStatus ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Logout Current User.
    ///
    func logout() {
        self.client?.logout(userid: self.userid, completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.updateUser ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// Login by WeChat Code.
    ///
    func loginByWeChatCode() {
        //Change your code from WeChat via https://docs.authing.cn/social-login/mobile/wechat.html
        let code = "041jya0w35SheV2Czq0w3kR57j2jya0T"
        self.client?.loginByWeChatCode(code: code, completion: { status in
            print(status)
        })
    }
    
    
}

