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
    
    
    private var client: AuthenticationClient?
    
    /// 修改配置信息
    /// Find in https://console.authing.cn Setting - Basic Information.
    let userPoolId = "5f967caecd744579cccf4bcf"
    let secret = "3eb5b702173678c467e6cde8f0c3e963"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.client = AuthenticationClient(userPoolId: userPoolId, secret: secret)
        
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
    
    
    
    
    
    /// 通过用户名注册
    ///
    func registerByUsername() {
        self.client?.registerByUsername(username: textUsername.text!, password: textPassword.text!, completion:{status in
            if(status.errors == nil) {
                //调用成功后的逻辑
                print(status.data?.register ?? "")
            } else {
                //调用返回错误
                print(status.errors ?? "")
            }
        })
    }

    /// 通过邮箱注册
    ///
    func registerByEmail() {
        self.client?.registerByEmail(email: textEmail.text!, password: textPassword.text!, completion: {status in
            if(status.errors == nil) {
                //调用成功后的逻辑
                print(status.data?.register ?? "")
            } else {
                //调用返回错误
                print(status.errors ?? "")
            }
        })
    }
    
    
    /// 发送验证邮件
    ///
    func sendVerifyEmail() {
        self.client?.sendVerifyEmail(mail: textEmail.text!, completion: {status in
            if(status.errors == nil) {
                //调用成功后的逻辑
                print(status.data?.sendVerifyEmail ?? "")
            } else {
                //调用返回错误
                print(status.errors ?? "")
            }
        })
    }
    
    
    /// 发送手机验证码
    ///
    func sendSmsCode() {
        self.client?.sendSmsCode(phone: textPhone.text!, completion: { status in
            print(status)
        })
    }
    
    /// 通过手机号验证码注册
    ///
    func registerByPhoneCode() {
        self.client?.registerByPhoneCode(phone: textPhone.text!, phoneCode: Int(textPhonecode.text!)!, completion:{ status in
            if(status.errors == nil) {
                //调用成功后的逻辑
                print(status.data?.login ?? "")
            } else {
                //调用返回错误
                print(status.errors ?? "")
            }
        })
    }

    /// 通过用户名和密码登录
    ///
    func loginByUsername() {
        self.client?.loginByUsername(username: textUsername.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //调用成功后的逻辑
                print(status.data?.login ?? "")
            } else {
                //调用返回错误
                print(status.errors ?? "")
            }
        })
    }
    
    /// 通过邮箱密码登录
    ///
    func loginByEmail() {
        self.client?.loginByEmail(email: textEmail.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //调用成功后的逻辑
                print(status.data?.login ?? "")
            } else {
                //调用返回错误
                print(status.errors ?? "")
            }
        })
    }
    
    /// 通过手机号和验证码登录
    ///
    func loginByPhoneCode() {
        self.client?.loginByPhoneCode(phone: textPhone.text!, phoneCode: Int(textPhonecode.text!)!, completion:{ status in
            if(status.errors == nil) {
                //调用成功后的逻辑
                print(status.data?.login ?? "")
            } else {
                //调用返回错误
                print(status.errors ?? "")
            }
        })
    }
    
    /// 通过手机号和密码登录
    ///
    func loginByPhonePassword() {
        self.client?.loginByPhonePassword(phone: textPhone.text!, password: textPassword.text!, completion:{ status in
            if(status.errors == nil) {
                //调用成功后的逻辑
                print(status.data?.login ?? "")
            } else {
                //调用返回错误
                print(status.errors ?? "")
            }
        })
    }

    
}

