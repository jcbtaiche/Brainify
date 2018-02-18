//
//  SecondViewController.swift
//  Blueprint
//
//  Created by JC B on 2018-02-18.
//  Copyright © 2018 JC. All rights reserved.
//

import UIKit
import MessageUI

class SecondViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
        // Configure the fields of the interface.
        composeVC.recipients = ["4085551212"]
        composeVC.body = "Hello from California!"
        
        // Present the view controller modally.
//        self.present(composeVC, animated: true, completion: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

