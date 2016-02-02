//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Riaz N Virani on 2/1/16.
//  Copyright © 2016 Riaz N Virani. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
  
  @IBOutlet weak var webView: UIWebView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let htmlFile = NSBundle.mainBundle().pathForResource("BullsEye", ofType: "html") {
      if let htmlData = NSData(contentsOfFile: htmlFile) {
        let baseURL = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)
        webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseURL)
      }
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  @IBAction func close() {
    dismissViewControllerAnimated(true, completion: nil)
  }
}
