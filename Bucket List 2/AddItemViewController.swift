//
//  AddItemVC.swift
//  Bucket List 2
//
//  Created by Vinney Le on 9/21/17.
//  Copyright © 2017 Vinney Le. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {
/*
     Add a property (delegate) so that BucketListViewController can set itself
     as the cancel button delegate.
 */
    weak var delegate: AddItemDelegate?

/*   Need the Cancel button to trigger an action that tells the delegate that the
     button was pressed.
 */
    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }
    
}

