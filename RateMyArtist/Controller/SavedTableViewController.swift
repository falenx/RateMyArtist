//
//  SavedTableViewController.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/23/20.
//

import UIKit


class TattooArtistTableViewCell: UITableViewCell {
    //@IBOutlet weak var artistNameTextField: UITextField!
    
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

class SavedTableViewController: UITableViewController{
    
    let artist1 = TattooArtist(artistName: "artist1", image: "Place Image Here", shop: "Shop1", contact: "Contact 1", rating: "4.7")
    
    var favoritedListArray: [TattooArtist] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        artist1.isFavorited = true
        
        
        favoritedListArray.append(artist1)

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        print(favoritedListArray[0].name)
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistTableViewCell", for: indexPath)

        // Configure the cell...
        //cell.textLabel?.text = sampleDB.savedArtists[indexPath.row]
    
        //cell.artistNameTextField.text = favoritedListArray[indexPath.row].name
        //cell.averageRatingTextField.text = favoritedListArray[indexPath.row].averageRating
        //cell.favorited = favoritedListArray[indexPath.row].isFavorited
        
        /*if cell.favorited {
            cell.favoriteButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        }*/
        
        
        

        return cell
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