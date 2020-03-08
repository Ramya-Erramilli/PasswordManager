//
//  ListTableViewController.swift
//  PasswordManager
//
//  Created by Ramya on 24/07/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController{
    
    var avaialbleDomains = ["Password","Bank Account","Address","Card","Secure Notes"]
    
//    ,,,,]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Available Domains"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return avaialbleDomains.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! TableViewCell
//        print("here")
//        print(avaialbleDomains[indexPath.row])
        cell.nameLabelOutlet.text = avaialbleDomains[indexPath.row]
        cell.nameLabelOutlet.sizeToFit()
        cell.imageOutlet.image = UIImage(named: cell.nameLabelOutlet.text!)
//        cell.imageOutlet.sizeToFit()
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var newView:UIViewController?
        var flag = true
        
        switch indexPath.row {
        case 0:
             newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "passwordVC") as! PasswordViewController
        case 1:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "accountVC") as! AccountViewController
        case 2:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "addressVC") as! AddressViewController
        case 3:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "cardVC") as! CardViewController
        case 4:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secureVC") as! SecureNotesViewController
        default:
            flag = false
            var alert = UIAlertController(title: "Wrong selection", message: "Choose an appropriate row", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert,animated: true,completion: nil)
        }

        if flag{
            self.show(newView!, sender: self)
        }
        //self.present(newView, animated: true, completion: nil) //Will not be in navgiaion stack of you present -- No back button
    }
   
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
