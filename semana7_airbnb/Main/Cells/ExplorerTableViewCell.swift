//
//  ExplorerTableViewCell.swift
//  semana7_airbnb
//
//  Created by MAC09 on 24/11/21.
//

import UIKit

class ExplorerTableViewCell: UITableViewCell {

    
    @IBOutlet weak var explorerImage: UIImageView!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblRating: UILabel!
    
    @IBOutlet weak var lblCountRating: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblAdrees: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
