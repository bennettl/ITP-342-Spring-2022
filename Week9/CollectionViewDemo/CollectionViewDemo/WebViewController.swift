//
//  WebViewController.swift
//  CollectionViewDemo
//
//  Created by lee bennett on 3/21/22.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // String -> "https://www.apple.com"
        // URL
        // URLRequest
        // Use the URL request to load it in the webview
        let url = URL(string: "https://www.apple.com")!
        let request = URLRequest(url: url)
        webView.load(request)
        
        webView.navigationDelegate = self
        
       

        // Do any additional setup after loading the view.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("\(#function)")
        spinner.stopAnimating()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
