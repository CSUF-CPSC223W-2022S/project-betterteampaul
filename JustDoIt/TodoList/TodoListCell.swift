//
//  TodoListCell.swift
//  JustDoIt
//
//  Created by Guillian Daguplo on 4/6/22.
//

import UIKit

class TodoListCell: UITableViewCell {
    @IBOutlet var assignmentName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
