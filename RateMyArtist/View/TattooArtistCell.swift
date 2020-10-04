//
//  TattooArtistCell.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/28/20.
//

import UIKit

class TattooArtistCell: UITableViewCell {

    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artistRatingLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    @IBAction func favoriteButtonPressed(_ sender: UIButton) {
        //favorite or unfavorite artist
        //change star picture accordingly
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
