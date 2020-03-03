//
//  TableViewCell.swift
//  PasswordManager
//
//  Created by Ramya on 24/07/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var nameLabelOutlet: UILabel!
//    @IBOutlet weak var imageOutlet: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
