//
//  HttpViewController.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/16.
//

import UIKit

class HttpViewController: TempViewController {
    
    
    @IBAction func actionLogout(_ sender: Any) {
        self.logout()
    }
    
    @IBAction func actionLoginByLdap(_ sender: Any) {
        self.loginByLdap()
    }
    
    @IBAction func actionListApplications(_ sender: Any) {
        self.listApplications()
    }
    
    @IBAction func actionUserIdVerifyByFaceImageBase64(_ sender: Any) {
        self.userIdVerifyByFaceImageBase64()
    }
    
    @IBAction func actionUserIdVerifyStatus(_ sender: Any) {
        self.userIdVerifyStatus()
    }
    
    @IBAction func actionSocialLinkByTwoToken(_ sender: Any) {
        self.socialLinkByTwoToken()
    }
    
    @IBAction func actionSocialLinkByOneToken(_ sender: Any) {
        self.socialLinkByOneToken()
    }
    
    @IBAction func actionSocialUnLink(_ sender: Any) {
        self.socialUnLink()
    }
    
    @IBAction func actionGetSecurityLevel(_ sender: Any) {
        self.getSecurityLevel()
    }
    
    
    
    /// Logout Current User.
    /// 退出登录
    ///
    func logout() {
        AuthenticationClient.shared.logout(completion: { (status) in
            print(status)
        })
    }
    
    /// Login by  LDAP username and password
    /// 使用LDAP 账号密码登录
    ///
    func loginByLdap(){
        AuthenticationClient.shared.loginByLdap(username: textUsername.text!, password: textPassword.text!, completion: { (status) in
            print(status)
        })
    }
    
    /// list Applications
    /// 获取当前用户能够访问的应用
    ///
    func listApplications(){
        AuthenticationClient.shared.listApplications(page: 0, limit: 10, completion: { (status) in
            print(status)
        })
    }
    
    func userIdVerifyByFaceImageBase64() {
        AuthenticationClient.shared.userIdVerifyByFaceImageBase64(name: textUsername.text!, idCard: textPassword.text!, faceImageBase64: "", completion: { (status) in
            print(status)
        })
    }
    
    func userIdVerifyStatus(){
        AuthenticationClient.shared.userIdVerifyStatus(completion: { (status) in
            print(status)
        })
    }
    
    func socialLinkByTwoToken(){
        AuthenticationClient.shared.socialLink(primaryUserToken: textUsername.text!, secondaryUserToken: textPassword.text!, completion: { (status) in
            print(status)
        })
    }
    
    func socialLinkByOneToken(){
        AuthenticationClient.shared.socialLink(secondaryUserToken: textPassword.text!, completion: { (status) in
            print(status)
        })
    }
    
    /// social UnLink
    /// 解绑社交账号
    ///
    func socialUnLink(){
        AuthenticationClient.shared.socialUnLink(primaryUserToken: textUsername.text!, completion: { (status) in
            print(status)
        })
    }
    
    /// get Security Level
    /// 获取用户的安全等级评分
    ///
    func getSecurityLevel() {
        AuthenticationClient.shared.getSecurityLevel(completion: { (status) in
            print(status)
        })
    }
}
