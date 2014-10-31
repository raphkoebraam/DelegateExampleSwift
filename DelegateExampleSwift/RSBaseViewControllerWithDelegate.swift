//
//  RSBaseViewControllerWithDelegate.swift
//  DelegateExampleSwift
//
//  Created by Raphael Silva on 10/31/14.
//  Copyright (c) 2014 peagasilva. All rights reserved.
//

import UIKit

class RSBaseViewControllerWithDelegate: RSBaseViewController, RSTableViewCellDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func didClickButton(cell: RSTableViewCell) { }

}
