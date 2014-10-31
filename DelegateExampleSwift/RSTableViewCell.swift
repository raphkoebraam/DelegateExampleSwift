//
//  RSTableViewCell.swift
//  DelegateExampleSwift
//
//  Created by Raphael Silva on 10/31/14.
//  Copyright (c) 2014 peagasilva. All rights reserved.
//

import UIKit

protocol RSTableViewCellDelegate {
    func didClickButton(cell: RSTableViewCell)
}

class RSTableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var delegate:RSTableViewCellDelegate? = nil

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func buttonClicked(sender: AnyObject) {
        if (self.delegate != nil) {
            self.delegate!.didClickButton(self)
        }
    }

}
