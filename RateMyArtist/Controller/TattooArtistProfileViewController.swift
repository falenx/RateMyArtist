//
//  TattooArtistProfileViewController.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/23/20.
//

import UIKit

class TattooArtistProfileViewController: UIViewController {
    
    var favorited = true

    
    @IBOutlet weak var artistProfilePicture: UIImageView!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var artistShopName: UILabel!
    @IBOutlet weak var artistContactInfo: UILabel!
    @IBOutlet weak var criteriaOne: UILabel!
    @IBOutlet weak var scoreOne: UILabel!
    @IBOutlet weak var criteriaTwo: UILabel!
    @IBOutlet weak var scoreTwo: UILabel!
    @IBOutlet weak var criteriaThree: UILabel!
    @IBOutlet weak var scoreThree: UILabel!
    @IBOutlet weak var criteriaFour: UILabel!
    @IBOutlet weak var scoreFour: UILabel!
    @IBOutlet weak var criteriaFive: UILabel!
    @IBOutlet weak var scoreFive: UILabel!
    @IBOutlet weak var criteriaSix: UILabel!
    @IBOutlet weak var scoreSix: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    var artistName_: String = ""
    var artistShopName_: String = ""
    var artistContactInfo_: String = ""
    var criteriaOne_: String = ""
    var scoreOne_: String = ""
    
    
    
    
    
    @IBAction func rateButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func favoriteButtonPressed(_ sender: UIButton) {
        
        if favorited {
            favorited = false
            favoriteButton?.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            favorited = true
            favoriteButton?.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if favorited {
            favorited = false
            favoriteButton?.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            favorited = true
            favoriteButton?.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
        artistName.text = artistName_
        artistContactInfo.text = artistContactInfo_
        artistShopName.text = artistShopName_
        criteriaOne.text = criteriaOne_
        scoreOne.text = scoreOne_

        // Do any additional setup after loading the view.
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
