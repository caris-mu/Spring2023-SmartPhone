//
//  TableViewCell.swift
//  SevenWonders
//
//  Created by Cun Mu on 3/18/23.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var imgContainer: UIImageView!

    @IBOutlet weak var lblImage: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
