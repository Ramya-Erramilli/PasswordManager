//
//  ListCollectionViewController.swift
//  PasswordManager
//
//  Created by Ramya on 29/07/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class ListCollectionViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //Number of items in a row and screen
        var layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(0, 2, 0, 2)
        layout.minimumInteritemSpacing = 2
        let itemSize = UIScreen.main.bounds.width/2 - 3
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
//        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width)-2, height: (self.collectionView.frame.size.height)/4)
        
//        let itemSize = UIScreen.main.bounds.width/3 - 3
//        let layout = UICollectionViewFlowLayout()
//        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
//        
//        layout.itemSize = CGSize(width: itemSize, height: itemSize)
//        
//        layout.minimumLineSpacing = 3
//        layout.minimumInteritemSpacing = 0
//        
//        collectionView.collectionViewLayout = layout
        
        
        // Do any additional setup after loading the view.
    }

    var avaialbleDomains = ["Password","Bank Account","Address","Card","Secure Notes"]
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return avaialbleDomains.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell

        cell.imageOutlet.image = UIImage(named: avaialbleDomains[indexPath.item])
        cell.labelOutlet.text  = avaialbleDomains[indexPath.item]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        var newView:UIViewController?
        var flag = true
        
        switch indexPath.row {
        case 0:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "passwordVC") as! PasswordViewController
        case 1:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "accountVC") as! AccountViewController
        case 2:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "addressVC") as! AddressViewController
        case 3:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "cardVC") as! CardViewController
        case 4:
            newView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "secureVC") as! SecureNotesViewController
        default:
            flag = false
            var alert = UIAlertController(title: "Wrong selection", message: "Choose an appropriate row", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert,animated: true,completion: nil)
        }
        
        if flag{
            self.show(newView!, sender: self)
        }
        
//        var alert = UIAlertController(title: "Hey!", message: "You have selected \(avaialbleDomains[indexPath.item])", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Go ➡️", style: .default, handler: nil))
//        self.present(alert, animated: true, completion: nil)
////        self.show(alert, sender: self)
    }

}
