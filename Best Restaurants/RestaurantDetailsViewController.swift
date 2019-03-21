//
//  RestaurantDetailsViewController.swift
//  Best Restaurants
//
//  Created by Michael Rogers on 8/19/18.
//  Copyright © 2018 Michael Rogers. All rights reserved.
//

import UIKit

class RestaurantDetailsViewController: UIViewController {

    @IBOutlet weak var genreLBL:UILabel!
    @IBOutlet weak var ratingLBL:UILabel!
    
    var restaurant:Restaurant!
    
    override func viewWillAppear(_ animated: Bool) {
        genreLBL.text = "\(restaurant.genre)"
        ratingLBL.text = "\(restaurant.rating)"
        navigationItem.title = "\(restaurant.name)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
