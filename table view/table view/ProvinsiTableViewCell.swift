//
//  ProvinsiTableViewCell.swift
//  table view
//
//  Created by m.luthfi rizky ginting on 12/11/20.
//

import UIKit

class ProvinsiTableViewCell: UITableViewCell {

    @IBOutlet weak var provinsiImg: UIImageView!
    
    @IBOutlet weak var provinsiView: UIView!
    
    @IBOutlet weak var provinsiLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
