//
//  ViewController.swift
//  demo_objc_in_swift
//
//  Created by bryant tang on 5/20/15.
//  Copyright (c) 2015 cpttm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var object_a = MyObject();
        object_a.printHello();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

