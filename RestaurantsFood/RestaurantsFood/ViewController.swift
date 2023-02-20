//
//  ViewController.swift
//  RestaurantsFood
//
//  Created by Cun Mu on 2/14/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let restaurants = ["Hops n Drops", "The Oxford Saloon", "Pie Dive Bar", "Buzz Inn Steakhouse"]
    let foods = [["Beef Stroganoff", "Caesar Salad", "Eggs Benedict", "Delmonico Steak"], ["Chicken Marengo", "Beef Wellington", "Waldorf Salad", "Peach Melba"], ["Salisbury Steak", "Lobster Newburg", "Tater Tots", "Chicken Salad"], ["Pot Roast", "Fajitas", "Smithfield Ham", "Maryland crabcakes"]]
    

    var display_foods = [""]

    
    @IBOutlet weak var tblViewTop: UITableView!
    @IBOutlet weak var tblViewBottom: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tblViewTop {
            return restaurants.count
        } else {
            return display_foods.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tblViewTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = restaurants[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = display_foods[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tblViewTop {
            display_foods = foods[indexPath.row]
            tblViewBottom.reloadData()
        }
    }
}

