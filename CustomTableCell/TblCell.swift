//
//  TblCell.swift
//  CustomTableCell
//
//  Created by Andrew Seeley on 6/10/2014.
//  Copyright (c) 2014 Seemu. All rights reserved.
//

import UIKit

class TblCell: UITableViewCell {

    
    @IBOutlet var imgCarName: UIImageView!
    @IBOutlet var lblCarName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
