//
//  SearchViewController.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/15.
//

import UIKit

class SearchViewController: TempViewController {
    @IBAction func actionListAuthorizedResources(_ sender: Any) {
        self.listAuthorizedResources()
    }
    
    @IBAction func actionListOrg(_ sender: Any) {
        self.ListOrgs()
    }
    
    @IBAction func actionGetCurrentUser(_ sender: Any) {
        self.GetCurrentUser()
    }
    
    @IBAction func actionListUdv(_ sender: Any) {
        self.ListUdv()
    }
    
    @IBAction func actionComputedPasswordSecurityLevel(_ sender: Any) {
        self.ComputedPasswordSecurityLevel()
    }
    
    /// list Authorized Resources
    /// 获取用户被授权的所有资源列表
    ///
    func listAuthorizedResources() {
        AuthenticationClient.shared.listAuthorizedResources(completion: { (result) in
            print(result)
        })
    }
    
    /// listOrg.
    /// 获取用户所在组织机构
    ///
    func ListOrgs() {
        //Normal
        AuthenticationClient.shared.listOrg(completion: { status in
            print(status)
        })
        
//        //With result
//        AuthenticationClient.shared.listOrgWithResult(completion: { result in
//            print(result)
//        })
    }
    
    func GetCurrentUser() {
        AuthenticationClient.shared.getCurrentUser(completion: { (result) in
            print(result)
        })
    }
    
    /// List Udv.
    /// 获取当前用户的自定义数据列表
    ///
    func ListUdv() {
        //Normal
        AuthenticationClient.shared.listUdv(completion:{ status in
            if(status.errors == nil) {
                //Success
                print(status.data?.udv ?? "")
            } else {
                //Failure
                print(status.errors ?? "")
            }
        })
    }
    
    /// computed Password Security Level
    /// 计算密码安全等级
    ///
    func ComputedPasswordSecurityLevel() {
        AuthenticationClient.shared.computedPasswordSecurityLevel(proclaimedPassword: textPassword.text!, completion: { (result) in
            print(result)
        })
    }
}
