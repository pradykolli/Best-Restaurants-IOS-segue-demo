//
//  RestaurantsTableViewController.swift
//  Beset Restaurants
//
//  Created by Michael Rogers on 8/14/18.
//  Copyright © 2018 Michael Rogers. All rights reserved.
//

import UIKit

class RestaurantsTableViewController: UITableViewController {

    var restaurants:[String] = ["Planet Sub", "Subway", "Applebee's", "Pizza Ranch", "A&Gs", "Jimmy Johns"]
    override func viewDidLoad() {
        super.viewDidLoad()

       }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Restaurants.shared.numRestaurants()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell")
     cell?.textLabel?.text = Restaurants.shared[indexPath.row].name
     cell?.detailTextLabel?.text = "\(Restaurants.shared[indexPath.row].rating)"
     return cell!
    }
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        if segue.identifier == "Restaurant Details"{
        let restaurantDVC = segue.destination as! RestaurantDetailsViewController
        // Pass the selected object to the new view controller.
        restaurantDVC.restaurant = Restaurants.shared[tableView.indexPathForSelectedRow!.row]

    
        }
    }

}
