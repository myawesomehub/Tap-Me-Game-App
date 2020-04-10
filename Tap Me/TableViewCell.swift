//
//  TableViewCell.swift
//  Tap Me
//
//  Created by Mohammad Adil on 28/08/19.
//  Copyright © 2019 Mohammad Yasir. All rights reserved.
//

import UIKit
import RealmSwift
class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var idOutlet: UILabel!
    @IBOutlet weak var scoreOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
   
        
        // Configure the view for the selected state
    }

}
