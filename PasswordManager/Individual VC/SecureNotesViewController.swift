//
//  SecureNotesViewController.swift
//  PasswordManager
//
//  Created by Ramya on 25/07/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class SecureNotesViewController: UIViewController {

    @IBOutlet weak var scrollOutlet: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        scrollOutlet.addSubview(UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "scroll").view)
        //createUIComponents()
        // Do any additional setup after loading the view.
    }

//    func createUIComponents(){
//        var nameLabel = createLabel(text: "Name")
//        var nameTextF = createTextFeild()
//        nameLabel.center = nameTextF.center
//
//        view.addSubview(nameLabel)
//        view.addSubview(nameTextF)
//
//        view.createConstraintsWithFormat(format: "H:[v0(v1)]-17-[v1]", views: nameLabel,nameTextF)
//        view.createConstraintsWithFormat(format: "H:|-40-[v0]", views: nameLabel)
//        view.createConstraintsWithFormat(format: "H:[v0]-55-|", views: nameTextF)
//        view.createConstraintsWithFormat(format: "V:|-74-[v0]", views: nameLabel)
//        view.createConstraintsWithFormat(format: "V:|-74-[v0]", views: nameTextF)
//
//
//
////        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[v0(v1)]-10-[v1]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel,"v1":nameTextF]))
////        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-60-[v0]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
////        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-60-[v0]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameTextF]))
//
//    }
//
//    func createLabel(text:String)->UILabel{
//        var label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = text
//        label.textAlignment = .right
//        label.sizeToFit()
//        label.layer.cornerRadius = 5
//        label.frame = CGRect(x: 80, y: 80, width: 75, height: 44)
////        label.layer.borderColor = UIColor.black.cgColor
//        label.backgroundColor = UIColor.blue
//        return label
//    }
//
//    func createTextFeild()->UITextField{
//        var txtf = UITextField()
//        txtf.translatesAutoresizingMaskIntoConstraints = false
//        txtf.borderStyle = .roundedRect
////        txtf.backgroundColor = UIColor.lightGray
//        return txtf
//    }


}

extension UIView{
    func createConstraintsWithFormat(format:String,views:UIView...){
        
        var viewDictionary = [String:Any]()
        for (index,view) in views.enumerated(){
            view.translatesAutoresizingMaskIntoConstraints = false
            let key = "v\(index)"
            viewDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewDictionary))
        
    }
}




















