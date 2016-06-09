//
//  ViewControllerA.swift
//  protocolsAndDelegatesDemo
//
//  Created by Alejandro Castillejo on 6/8/16.
//  Copyright © 2016 alejandrocastillejo. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController, ButtonPressingDelegate {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        
        let vcb = ViewControllerB(nibName:"ViewControllerB",bundle:nil)
        vcb.delegate = self
        self.navigationController?.pushViewController(vcb, animated: true)
        
    }
    
    func pressingButton() {
        if (label.text == "YES"){
            label.text = "NO"
        } else {
            label.text = "YES"
        }
        
    }

//    func doSomethingOptionalMethod() {
//        print("hehe")
//    }

}
