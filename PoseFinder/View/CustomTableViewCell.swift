//
//  CustomTableViewCell.swift
//  PoseFinder
//
//  Created by Quentin Bona on 18/10/2022.
//  Copyright © 2022 Apple. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    static let identifier = "CustomTableViewCell"

    @IBOutlet var ghostImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(model: Ghost){
        nameLabel.text = model.name
        ghostImageView.image = model.image
        
        //TODO
    }
    
}
