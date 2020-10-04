//
//  SavedTableViewController.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/23/20.
//

import UIKit

class SavedTableViewController: UITableViewController{
    
    let artist1 = TattooArtist(artistName: "Artist 1", image: "Place Image Here", shop: "Shop 1", contact: "Contact 1", rating: "4.7")
    let artist2 = TattooArtist(artistName: "Artist 2", image: "Place Image Here", shop: "Shop 2", contact: "Contact 2", rating: "4.3")
    let artist3 = TattooArtist(artistName: "Artist 3", image: "Place Image Here", shop: "Shop 3", contact: "Contact 3", rating: "4.9")
    
    var artistName = ""
    var artistShopName = ""
    var artistContactInfo = ""
    var criteriaOne = ""
    var scoreOne = ""
    var favorited = true

    
    var favoritedListArray: [TattooArtist] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        artist1.isFavorited = false
        artist2.isFavorited = true
        artist3.isFavorited = false
        
        
        favoritedListArray.append(artist1)
        favoritedListArray.append(artist2)
        favoritedListArray.append(artist3)
        
        tableView.register(UINib(nibName: "TattooArtistCell", bundle: nil), forCellReuseIdentifier: "ArtistTableViewCell")
        

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return favoritedListArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistTableViewCell", for: indexPath) as! TattooArtistCell

        // Configure the cell...
        cell.artistNameLabel.text = favoritedListArray[indexPath.row].name
        cell.artistRatingLabel.text = favoritedListArray[indexPath.row].averageRating
        
        if favoritedListArray[indexPath.row].isFavorited == true {
            cell.favoriteButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            cell.favoriteButton.setImage(UIImage(systemName: "star"), for: .normal)

        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        
        artistName = favoritedListArray[indexPath.row].name
        artistShopName = favoritedListArray[indexPath.row].shopName
        artistContactInfo = favoritedListArray[indexPath.row].contactInfo
        criteriaOne = "Overall Rating"
        scoreOne = favoritedListArray[indexPath.row].averageRating
        favorited = favoritedListArray[indexPath.row].isFavorited
        
        performSegue(withIdentifier: "toArtistProfileVC", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toArtistProfileVC" {
            let destinationVC = segue.destination as! TattooArtistProfileViewController
            destinationVC.artistName_ = artistName
            destinationVC.artistShopName_ = artistShopName
            destinationVC.artistContactInfo_ = artistContactInfo
            destinationVC.criteriaOne_ = criteriaOne
            destinationVC.scoreOne_ = scoreOne
            destinationVC.favorited = favorited
        }
        
        
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
