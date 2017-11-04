//
//  CollectionEventTableViewCell.swift
//  Field Survey
//
//  Created by Benson Philipose on 11/3/17.
//  Copyright © 2017 Benson Philipose. All rights reserved.
//

import UIKit

class CollectionEventTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionIconImageView: UIImageView!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
