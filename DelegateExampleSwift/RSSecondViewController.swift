//
//  RSSecondViewController.swift
//  DelegateExampleSwift
//
//  Created by Raphael Silva on 10/31/14.
//  Copyright (c) 2014 peagasilva. All rights reserved.
//

import UIKit
import Foundation

class RSSecondViewController: RSBaseViewControllerWithDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        
        self.tableView.estimatedRowHeight = 64
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func didClickButton(cell: RSTableViewCell) {
        var indexPath: NSIndexPath!
        
        indexPath = self.tableView.indexPathForCell(cell);
        
        let n = indexPath.row + 1
        
        println("Button from cell #\(n) clicked! - [\(__FILE__.lastPathComponent.stringByDeletingPathExtension) func: \(__FUNCTION__)]")
        
        self.alert("Button Clicked!", message: "You clicked on the button from the row #\(n)")
    }
    
    
    // MARK: - Table View Data Source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! RSTableViewCell
        
        cell.delegate = self
        
        let n = indexPath.row + 1
        
        cell.title.text = "Title #\(n)"
        cell.title.numberOfLines = 0
        
        if indexPath.row % 2 == 0 {
            cell.subtitle.text = "Subtitle... \n\nwith different height :)"
        } else {
            cell.subtitle.text = "Subtitle"
        }
        
        cell.subtitle.numberOfLines = 0
        
//        println(cell.contentView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize))
        
        return cell
    }
    
    
    // MARK: - Alert
    
    func alert(title: String, message: String) -> Void {
        let alert = UIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: "OK")
        
        alert.show()
    }

}
