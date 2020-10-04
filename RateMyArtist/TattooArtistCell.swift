//
//  TattooArtistCell.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/24/20.
//


import UIKit

class TattooArtistCell: UITableViewCell {
    
    var favorited: Bool = false
    
   
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var averageRatingLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    @IBAction func favoriteButtonPressed(_ sender: UIButton) {
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
