//
//  ViewControllerB.swift
//  protocolsAndDelegatesDemo
//
//  Created by Alejandro Castillejo on 6/8/16.
//  Copyright © 2016 alejandrocastillejo. All rights reserved.
//

import UIKit

protocol ButtonPressingDelegate {
    
    func pressingButton()
    func doSomethingOptionalMethod()
    
}

extension ButtonPressingDelegate {
    func doSomethingOptionalMethod(){
        // leaving this empty
    }
}


class ViewControllerB: UIViewController {
    
    var delegate: ButtonPressingDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonPressed(sender: UIButton) {
        
        if let delegate = self.delegate {
            delegate.pressingButton()
//            delegate.doSomethingOptionalMethod()
        }
        
    }

}
