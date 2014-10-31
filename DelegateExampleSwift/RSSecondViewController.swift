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
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func didClickButton(cell: RSTableViewCell) {
        var indexPath: NSIndexPath!
        
        indexPath = self.tableView.indexPathForCell(cell);
        
        println("Button from cell #\(indexPath.row) clicked! - [\(__FILE__.lastPathComponent.stringByDeletingPathExtension) func: \(__FUNCTION__)]")
    }
    
    
    // MARK: - Table View Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as RSTableViewCell
        
        cell.delegate = self
        
        cell.title.text = "Title #\(indexPath.row)"
        cell.subtitle.text = "Subtitle #\(indexPath.row)"
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 45
    }

}
