//
//  ViewController.swift
//  SwiftyAuthingExample
//
//  Created by Eric Woo on 2020/10/30.
//

import UIKit

class ViewController: UIViewController {

    var client: AuthenticationClient?
    
    /// 修改配置信息
    /// Find in https://console.authing.cn Setting - Basic Information.
    let userPoolId = "5f967caecd744579cccf4bcf"
    let secret = "3eb5b702173678c467e6cde8f0c3e963"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.client = AuthenticationClient(userPoolId: userPoolId, secret: secret)

//        self.registerByUsername()
        
//        self.registerByEmail()
//        self.sendVerifyEmail()
        
//        self.sendSmsCode()
//        self.registerByPhoneCode()
        
//        self.loginByUsername()
//        self.loginByEmail()
//        self.loginByPhoneCode()
//        self.loginByPhonePassword()
        
    }

    
    /// 通过用户名注册
    ///
    func registerByUsername() {
        self.client?.registerByUsername(username: "test1", password: "123", completion:{status in
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
        self.client?.registerByEmail(email: "aloveric@qq.com", password: "123", completion: {status in
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
        self.client?.sendVerifyEmail(mail: "aloveric@qq.com", completion: {status in
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
        self.client?.sendSmsCode(phone: "13524132952", completion: { status in
            print(status)
        })
    }
    
    /// 通过手机号验证码注册
    ///
    func registerByPhoneCode() {
        self.client?.registerByPhoneCode(phone: "13524132952", phoneCode: 7145, completion:{ status in
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
        self.client?.loginByUsername(username: "aloveric", password: "1234", completion:{ status in
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
        self.client?.loginByEmail(email: "aloveric@qq.com", password: "123", completion:{ status in
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
        self.client?.loginByPhoneCode(phone: "13524132952", phoneCode: 2739, completion:{ status in
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
        self.client?.loginByPhonePassword(phone: "13524132952", password: "123", completion:{ status in
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

