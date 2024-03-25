//
//  TableViewCell.swift
//  contact_details
//
//  Created by Karthiga on 12/19/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imagebox: UIImageView!
    @IBOutlet weak var labelcell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
