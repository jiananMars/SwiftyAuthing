//
//  WebViewController.swift
//  SwiftyAuthingExample
//
//  Created by XiangWei on 2021/9/27.
//

import UIKit
import WebKit

class WebViewController: UIViewController,WKNavigationDelegate,WKUIDelegate,WKScriptMessageHandler {
    
    var webView:WKWebView!
        
    override func loadView() {
        let conf = WKWebViewConfiguration();
        conf.userContentController.add(self, name: "regcallBack")
        self.webView = WKWebView(frame: .zero, configuration: conf)
        self.webView.navigationDelegate = self
        self.webView.uiDelegate = self
        view = self.webView;
        
//        self.view.addSubview(self.webView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let htmlPath = Bundle.main.path(forResource: "authingThirdLogin", ofType: "html")
        //创建网址
        let url = URL(fileURLWithPath:htmlPath ?? "") //URL(string: "https://swiftyauthingexample.authing.cn/")
        //创建请求
//        let request = URLRequest(url: url)
        
        
//        self.webView update
        
        //加载请求
        self.webView.loadFileURL(url, allowingReadAccessTo: Bundle.main.bundleURL)
    }
    
    @IBAction func actionBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    //MARK: - WKScriptMessageHandler
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        //判断消息通道
        if(message.name == "regcallBack"){
            print(message.body)
        }

    }
    
    //MARK: - WKNavigationDelegate
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        //页面开始加载时调用
        print("didStartProvisionalNavigation")
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print("didCommit")
        //当内容开始返回时调用
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("didFinish")
        // 页面加载完成之后调用
        webView.evaluateJavaScript("displayDate()") { (any, error) in
            if (error != nil) {
                print(error ?? "err")
            }
            else
            {
                print("didFinish loginSuccess()")
            }
        }
    }
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("didFail")
        // 页面加载完成之后调用
    }
    
    
    func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!) {
        print("didReceiveServerRedirectForProvisionalNavigation")
//         接收到服务器跳转请求之后调用
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        print("decidePolicyFor navigationAction:")
//        let url = navigationAction.request.url
        
//        let scheme = url?.scheme
//
//        guard let schemeStr = scheme else { return
//
//        }
//        if schemeStr == "tel" {
//            //iOS10 改为此函数
//            if #available(iOS 10.0, *) {
//                UIApplication.shared.open(url!, options: [String : Any](), completionHandler: nil)
//            } else {
//                // Fallback on earlier versions
//            }
//        }
        
        decisionHandler(.allow)
     // 在发送请求之前，决定是否跳转
    }

    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        print("decidePolicyFor navigationResponse")
        
        decisionHandler(.allow)
        
        // 在收到响应后，决定是否跳转
    }
    
   
    //MARK: - WKUIDelegate
    // 创建一个新的WebView
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        print("createWebViewWith")
        return WKWebView()
    }
    
    // 输入框
    // JS端调用prompt函数时，会触发此方法
    // 要求输入一段文本
    // 在原生输入得到文本内容后，通过completionHandler回调给JS
    func webView(_ webView: WKWebView, runJavaScriptTextInputPanelWithPrompt prompt: String, defaultText: String?, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (String?) -> Void){
        
        print("runJavaScriptTextInputPanelWithPrompt")
        
    }
    
    
    // 确认框
    // JS端调用confirm函数时，会触发此方法
    // 通过message可以拿到JS端所传的数据
    // 在iOS端显示原生alert得到YES/NO后
    // 通过completionHandler回调给JS端
    func webView(_ webView: WKWebView, runJavaScriptConfirmPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping (Bool) -> Void){

        print("runJavaScriptConfirmPanelWithMessage")
    }
    
    
    // 警告框
    // 在JS端调用alert函数时，会触发此代理方法。
    // JS端调用alert时所传的数据可以通过message拿到
    // 在原生得到结果后，需要回调JS，是通过completionHandler回调
    func webView(_ webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void){
        
        print("runJavaScriptAlertPanelWithMessage")
    }
    
    override class func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print("observeValue")
    }
}
