//
//  WebViewController.swift
//  interviewHelper
//
//  Created by Haydar Bekmuradov on 5.04.23.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    // - UI
    @IBOutlet weak var webView: UIView!
    
    // - WebView
    private var customWebView = WKWebView()
    
    // - Data
    var data : QuestionsEnum =  .one
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWebView()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        customWebView.frame = webView.bounds
    }
    
    @IBAction func closeButtonAction() {
        dismiss(animated: true)
    }
    
    func configureWebView() {
//        closeButton.layer.cornerRadius = 12
//        closeButton.layer.masksToBounds = true
        customWebView.isHidden = true
        customWebView.navigationDelegate = self
        customWebView.load(data.answer)
        webView.addSubview(customWebView)
    }


}

//MARK: -
//MARK: - WKNavigationDelegate
extension WebViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        customWebView.isHidden = false
//        activityIndicator.stopAnimating()
    }
}


// MARK: -
// MARK: - WKWebView
extension WKWebView {
    func load(_ urlString: String) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            load(request)
        }
    }
}
