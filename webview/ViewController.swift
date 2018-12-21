//
//  ViewController.swift
//  webview
//
//  Created by 20161104575 on 2018/12/21.
//  Copyright © 2018年 20161104575. All rights reserved.
//

import UIKit
import WebKit//引入该包

class WebViewController: UIViewController {

    @IBOutlet weak var textfile1: UITextField!
    
    
    @IBOutlet weak var webview2: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func refreshClick(_ sender: AnyObject) {
        webview2.reload()
    }
    
    @IBAction func toClick(_ sender: AnyObject) {
        webview2.goForward()
    }
    
    @IBAction func backClick(_ sender: AnyObject) {
        webview2.goBack()
    }
    
    @IBAction func searchClick(_ sender: AnyObject) {
        let urls = textfile1.text
        webview2.load(NSURLRequest(url: NSURL(string: urls!)!as URL)as URLRequest)
    }
    
    @IBAction func textEndOnExit(_ sender:AnyObject){
        textfile1.resignFirstResponder()
    }
    
    @IBAction func touchUpInside(_ sender: UIControl){
        textfile1.resignFirstResponder()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        textfile1.resignFirstResponder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

