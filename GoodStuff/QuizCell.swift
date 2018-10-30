//
//  QuizCell.swift
//  GoodStuff
//
//  Created by iGuest on 10/29/18.
//  Copyright © 2018 iGuest. All rights reserved.
//

import UIKit

class QuizCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescr: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
