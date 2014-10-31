//
//  RSFirstViewController.swift
//  DelegateExampleSwift
//
//  Created by Raphael Silva on 10/31/14.
//  Copyright (c) 2014 peagasilva. All rights reserved.
//

import UIKit

class RSFirstViewController: RSBaseViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "goToSecondVCSegue") {
            println("Going to Second View Controller - [\(__FILE__.lastPathComponent.stringByDeletingPathExtension) func: \(__FUNCTION__)]")
        }
    }

}
