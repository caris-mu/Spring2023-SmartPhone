//
//  TableViewCell.swift
//  CustomTableViewCell_FoodImages
//
//  Created by Cun Mu on 2/22/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imgContainer: UIImageView!
    
    @IBOutlet weak var lblImage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
