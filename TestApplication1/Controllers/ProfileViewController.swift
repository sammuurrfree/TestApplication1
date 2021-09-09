//
//  ProfileViewController.swift
//  TestApplication1
//
//  Created by KS54 on 09.09.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var bankImageView: UIImageView!
    @IBOutlet weak var paypalImageView: UIImageView!
    var selectFlag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func card(_ sender: Any) {
        cardImageView.image = UIImage(named: "Group 67")
        bankImageView.image = UIImage(named: "Ellipse 7-1")
        paypalImageView.image = UIImage(named: "Ellipse 7-1")
    }
    
    @IBAction func bank(_ sender: Any) {
        cardImageView.image = UIImage(named: "llipse 7-1")
        bankImageView.image = UIImage(named: "Group 67")
        paypalImageView.image = UIImage(named: "Ellipse 7-1")
    }
    
    @IBAction func paypal(_ sender: Any) {
        cardImageView.image = UIImage(named: "llipse 7-1")
        bankImageView.image = UIImage(named: "Ellipse 7-1")
        paypalImageView.image = UIImage(named: "Group 67")
    }
    

}
