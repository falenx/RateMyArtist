//
//  TattooArtistTableViewCell.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/24/20.
//

import UIKit

class TattooArtistTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var artistNameTextField: UITextField!
    

    var favorited: Bool = false
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
