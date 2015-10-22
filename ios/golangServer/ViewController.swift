//
//  ViewController.swift
//  golangServer
//
//  Created by Sergey Parshukov on 22.10.15.
//  Copyright © 2015 Sergey Parshukov. All rights reserved.
//

import UIKit
import Server

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let serverQueue = dispatch_queue_create("server", DISPATCH_QUEUE_SERIAL)
        dispatch_async(serverQueue, {
            print("Starting server thread")
            GoServerRunServer()
        })

        print("Trying to access localhost")
        let url = NSURL(string: "http://localhost:8080/")
        self.webView.loadRequest(NSURLRequest(URL: url!))
    }
}

