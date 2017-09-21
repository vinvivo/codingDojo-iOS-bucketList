//
//  AddItemVC.swift
//  Bucket List 2
//
//  Created by Vinney Le on 9/21/17.
//  Copyright © 2017 Vinney Le. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController {
    
    // Add a property (weak var delegate) so that BucketListViewController can set itself as the cancel button delegate.
    weak var delegate: AddItemDelegate?
    
    // Add an outlet for the textField.
    @IBOutlet weak var itemTextField: UITextField!

    // Need the Cancel button to trigger an action that tells the delegate that the button was pressed.
    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.addItemViewController(self, didPressCancelButton: sender)
    }
    
    // Need the Save button to trigger an action that tells the delegate that the button was pressed and passes the required information (i.e., protocol variables '_ controller' and 'didFinishAddingItem item')
    @IBAction func doneBarButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.addItemViewController(self, didFinishAddingItem: itemTextField.text!)
    }
    
    
}

