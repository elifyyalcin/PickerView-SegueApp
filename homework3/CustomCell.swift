//
//  CustomCell.swift
//  homework3
//
//  Created by Elif Yalçın on 15.01.2021.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var cImage: UIImageView!
    @IBOutlet weak var cTitle: UILabel!
    @IBOutlet weak var cPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
