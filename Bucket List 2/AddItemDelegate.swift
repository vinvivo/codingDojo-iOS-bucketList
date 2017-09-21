//
//  AddItemDelegate.swift
//  Bucket List 2
//
//  Created by Vinney Le on 9/21/17.
//  Copyright © 2017 Vinney Le. All rights reserved.
//

import UIKit

// One protocol to contain all delegated functions
protocol AddItemDelegate: class {
    
    // Cancel button function
    func addItemViewController(_ controller: AddItemViewController, didPressCancelButton button: UIBarButtonItem)
    
    // Save button function
    func addItemViewController(_ controller: AddItemViewController, didFinishAddingItem item: String)

}

