//
//  ViewController.swift
//  Bucket List 2
//
//  Created by Vinney Le on 9/20/17.
//  Copyright © 2017 Vinney Le. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController, AddItemDelegate {

    var items: [String] = ["Get milk", "Pack up house", "Schedule movers", "Clean Vi's apartment"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("BucketListViewController loaded")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /* --------------------------------------------------
         Conform to UITableViewController by:
         1) Specifying how many rows, and
         2) Telling each row where to get its data from.
     */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath)
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
        
    }
    //---------------------------------------------------

    /* --------------------------------------------------
         Conform to AddItemDelegate by:
         1) Implementing required methods from the protocol.
     */
    func addItemViewController(_ controller: AddItemViewController, didPressCancelButton button: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
   
    func addItemViewController(_ controller: AddItemViewController, didFinishAddingItem item: String) {
        dismiss(animated: true, completion: nil)
        items.append(item)
        tableView.reloadData()
    }
    //---------------------------------------------------
    
    /* --------------------------------------------------
         Prepare for segue to AddItemViewController by setting self as its delegate.
     */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddItemSegue" {
            /*   Now we need to pass information between this controller (a
                 delegate of the cancel and save buttons) and the Add Item View
                 Controller.  Looking at the story board, there are several views
                 the information needs to be passed between:
                     Self -> Navigation Controller -> AddItemViewController (as
                     topViewController in the "stack")
             */
            let navigationController = segue.destination as! UINavigationController
            let controller = navigationController.topViewController as! AddItemViewController
            controller.delegate = self
        }
    }
    
}



