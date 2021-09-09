//
//  MainViewController.swift
//  TestApplication1
//
//  Created by KS54 on 09.09.2021.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    let groupDataBase = ["Foods", "Drinks", "Snacks", "Sauce"]
    var groupState = 0
    let foodDataBase = [[UIImage(named: "image11"), "Veggie tomato mix", "560 RUB"],
                        [UIImage(named: "image12"), "Spicy fish sauce", "860 RUB"]]
    @IBOutlet weak var groupCollectionView: UICollectionView!
    @IBOutlet weak var foodCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == groupCollectionView{ return groupDataBase.count }
        if collectionView == foodCollectionView{ return foodDataBase.count }
        
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        if collectionView == groupCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCollectionViewCell", for: indexPath) as! GroupCollectionViewCell
            if groupState == indexPath.row {
                cell.titleTextLabel.textColor = #colorLiteral(red: 1, green: 0.1983843744, blue: 0, alpha: 1)
                cell.progresView.isHidden = false
            }else{
                cell.titleTextLabel.textColor = #colorLiteral(red: 0.6039215686, green: 0.6039215686, blue: 0.6156862745, alpha: 1)
                cell.progresView.isHidden = true
            }
            
            cell.titleTextLabel.text = groupDataBase[indexPath.item]
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCollectionViewCell", for: indexPath) as! FoodCollectionViewCell
            
            cell.foodImageImageView.image = foodDataBase[indexPath.item][0] as? UIImage
            cell.foodTitleLabel.text = foodDataBase[indexPath.item][1] as? String
            cell.foodPriceLabel.text = foodDataBase[indexPath.item][2] as? String
            
            return cell
            
        }

    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == groupCollectionView{
            groupState = indexPath.item
            collectionView.reloadData()
        }else{
            let vc = (storyboard?.instantiateViewController(withIdentifier: "open"))!
            self.present(vc, animated: true)
        }
        
    }
    
    @IBAction func hideKetboardMethod(_ sender: Any) {
        
        view.isHidden = true
        
    }
    

}
