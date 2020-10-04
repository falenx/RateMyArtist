//
//  SearchingTableViewController.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/23/20.
//

import UIKit

class SearchingTableViewController: UITableViewController {
    
    let artist1 = TattooArtist(artistName: "artist1", image: "Place Image Here", shop: "Shop1", contact: "Contact 1", rating: "4.7")
    let artist2 = TattooArtist(artistName: "Artist 2", image: "Place Image Here", shop: "Shop 2", contact: "Contact 2", rating: "4.3")
    let artist3 = TattooArtist(artistName: "Artist 3", image: "Place Image Here", shop: "Shop 3", contact: "Contact 3", rating: "4.9")
   
    
    var artistArray: [TattooArtist] = []
    
    
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        artistArray.append(artist1)
        artistArray.append(artist2)
        artistArray.append(artist3)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

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
        return artistArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistTableViewCell", for: indexPath)

        // Configure the cell...
        //cell.textLabel?.text = sampleDB.artistNames[indexPath.row]
        

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
