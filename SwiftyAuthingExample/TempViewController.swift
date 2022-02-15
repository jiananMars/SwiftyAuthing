//
//  TempViewController.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/15.
//

import UIKit

class TempViewController: UIViewController {
    
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    @IBOutlet weak var textPhone: UITextField!
    @IBOutlet weak var textPhonecode: UITextField!
    
    
    /// Find in https://console.authing.cn Setting - Basic Information & Application.

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.client = AuthenticationClient(userPoolId: userPoolId, appId: appId)
        
//        AuthenticationClient.initSDK(userPoolId: userPoolId, appId: appId)
    }
    
    @IBAction func actionBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
