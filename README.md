# SwiftyAuthing

**SwiftyAuthing** is a pure Swift library for [Authing](https://authing.cn).

![image](images/4.png)

## Requirements

- Swift 5.0 +
- Xcode 11 +
- iOS 10+


## Installation

### Swift Package Manager

1. Xcode - Project - Swift Packages
2. Add + https://github.com/Woo-Interactive/SwiftyAuthing.git
3. Select the latest version

![image](images/1.png)

![image](images/2.png)

![image](images/3.png)

4. Update to latest version (optional)

![image](images/5.png)


## Example

1. Clone repository

2. Change **UserPoolId, Secret, and Host** in SwiftyAuthingExample - ViewController.swift

3. Run **SwiftyAuthingExample** with iOS simulator or device.

4. Test and check data with web console [https://console.authing.cn](https://console.authing.cn)


## How to use

```swift
import SwiftyAuthing

   /// Config Information, change your UserPoolId, Secret, and Host
    /// Find in https://console.authing.cn Setting - Basic Information.
    let userPoolId = "chang userPoolId here"
    let secret = "change secret here"
    let host = "https://core.authing.cn/graphql"

    let client: AuthenticationClient = AuthenticationClient(userPoolId: userPoolId, secret: secret, host: host)
    var userid = ""

    
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
        let code = "change code here"
        self.client?.loginByWeChatCode(code: code, completion: { status in
            print(status)
        })
    }


```

