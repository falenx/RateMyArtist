//
//  UserProfileViewController.swift
//  RateMyArtist
//
//  Created by michael taylor on 9/23/20.
//

import UIKit



class UserProfileViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextView!
    
    @IBOutlet weak var profilePicture: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changePasswordButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
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
