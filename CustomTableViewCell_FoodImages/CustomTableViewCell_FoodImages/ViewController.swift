//
//  ViewController.swift
//  CustomTableViewCell_FoodImages
//
//  Created by Cun Mu on 2/22/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let foods = ["Okonomiyaki", "Ramen", "Sashimi", "sushi", "Takoyaki", "Tempura", "Unagi", "Wagyu", "Yakitori"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell
        cell.imgContainer.image = UIImage(named: foods[indexPath.row])
        cell.lblImage.text = foods[indexPath.row]
        return cell
    }
}

