//
//  Notes.swift
//  PasswordManager
//
//  Created by Apple Enterprise on 06/08/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import Foundation

//MARK:- adding notification observers -- listening to events

//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
//
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)



//MARK:- Removing Listeners
//
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
//


//MARK:- Customised Button -- class and function

//    static func generateButtonForTitle(title:String) -> UIButton {
//        let button = HighlightableButton()
//        button.setTitle(title, for: .normal)
//        button.layer.borderWidth = 1
//        button.layer.borderColor = UIColor.white.cgColor
//        button.layer.cornerRadius = button.frame.width/2
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//        button.setTitleColor(UIColor.darkGray, for: .normal)
////        let bgC = "#colorLiteral(red: 0.9333333333, green: 0.9960784314, blue: 1, alpha: 1)"
//        button.backgroundColor = UIColor(red: 0.9333333333, green: 0.9960784314, blue: 1, alpha: 1)
//        return button
//    }
//
//    class HighlightableButton: UIButton{
//        override var isHighlighted: Bool{
//            didSet{
//                backgroundColor = isHighlighted ? UIColor.darkGray : UIColor.white
//                setTitleColor(isHighlighted ? UIColor.white : UIColor.darkGray, for: .normal)
//            }
//        }
//    }

//MARK:- Customised button creation
//        myButton.layer.cornerRadius = myButton.frame.width/2 // ROUND Button

//        myButton.clipsToBounds = true
//        let button = ViewController.generateButtonForTitle(title: "+")
//        myButton.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(button)
//        myButton.heightAnchor.constraint(equalToConstant: 60.0)

//        Adding Constraints        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-200-[v0]-70-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":myButton]))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":myButton]))

//MARK:- selector so that only views hidden by keyboard are moved

//    @objc func keyboardDidShow(notification:NSNotification){
//
//        if notification.name == NSNotification.Name.UIKeyboardWillShow{ // if keybaord is showing
//
//            let keyBoardHeight = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue.height // get keyboard's height
//            let keyboardY = self.view.frame.size.height - keyBoardHeight // keyboard Y
//            let activeFieldY:CGFloat! = self.activeField?.frame.origin.y // active field Y
//
//            if self.view.frame.origin.y >= 0{
//                if activeFieldY > keyboardY - 60    //Checking if field is hidden by keyboard or not (60 for padding )
//                {
//                    UIView.animate(withDuration: 0.025) {
//                        var y = self.view.frame.origin.y-(activeFieldY!-(keyboardY-60))+100
//                        //to move only a certain height
//                        self.view.frame = CGRect(x: 0, y: y, width: self.view.bounds.width, height: self.view.bounds.height)
//                    }
//            }
//        }
//        }else if notification.name == NSNotification.Name.UIKeyboardWillHide{
//                // if keyboard is hiding - move the view back to original position
//            UIView.animate(withDuration: 0.025) {
//                self.view.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
//                }
//            }
//
//
//    }

















