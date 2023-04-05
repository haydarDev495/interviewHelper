//
//  WebViewController.swift
//  interviewHelper
//
//  Created by Haydar Bekmuradov on 5.04.23.
//

import UIKit
import WebKit
import Lottie

class WebViewController: UIViewController {

    // - UI
    @IBOutlet weak var progressView: LottieAnimationView!
    @IBOutlet weak var webView: UIView!
    
    // - WebView
    private var customWebView = WKWebView()
    
    // - Data
    var data : QuestionsEnum =  .one
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        customWebView.frame = webView.bounds
    }
    
    @IBAction func closeButtonAction() {
        navigationController?.popViewController(animated: true)
    }
    
}

// MARK: -
// MARK: Configure
private extension WebViewController {
    func configure() {
        setupAnimation()
        configureWebView()
    }
    
    func setupAnimation() {
        progressView.play()
        progressView.loopMode = .loop
    }
    
    func configureWebView() {
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
        progressView.stop()
        progressView.isHidden = true
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
