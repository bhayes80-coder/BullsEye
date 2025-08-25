//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Barry Hayes on 8/25/25.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBOutlet var webView: WKWebView!

    @IBAction func close() {
      dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(
            forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
