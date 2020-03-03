//
//  ShiftUIViewController.swift
//  PasswordManager
//
//  Created by Apple Enterprise on 06/08/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class ShiftUIViewController{
    
    var addedNotifications = [NSNotification.Name.UIKeyboardWillShow,NSNotification.Name.UIKeyboardWillHide,NSNotification.Name.UIKeyboardWillChangeFrame]
    var currentVC:UIViewController?
    var activeField:UIView!

    func addListeners(currentVC: UIViewController,observer:Any?){
//        print("add listener")
        self.currentVC = currentVC

        for name in addedNotifications{
            NotificationCenter.default.addObserver(observer, selector: #selector(keyboardWillChange(notification:)), name:name, object: nil)
        }
    }
    
    func removeListeners(){
        for name in self.addedNotifications{
            NotificationCenter.default.removeObserver(self.currentVC, name: name, object: nil)
        }
    }
    
    @objc func keyboardWillChange(notification:NSNotification){

//        print("in selector",activeField)
        if notification.name == NSNotification.Name.UIKeyboardWillShow{ // if keybaord is showing
            let keyboardSize = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
            let keyBoardHeight = keyboardSize.height // get keyboard's height
            let keyboardY = (self.currentVC?.view.frame.size.height)! - keyBoardHeight // keyboard Y
            
            let activeFieldY:CGFloat! = self.activeField?.frame.origin.y // active field Y
            
            if (self.currentVC?.view.frame.origin.y)! >= CGFloat(0){
                if activeFieldY > keyboardY - 200   //Checking if field is hidden by keyboard or not (60 for padding )
                {
//                    print("in if")
                    UIView.animate(withDuration: 0.025) {
                        var y = (self.currentVC?.view.frame.origin.y)!-(activeFieldY!-(keyboardY-60))-150
                        //to move only a certain height
                        self.currentVC?.view.frame = CGRect(x: 0, y: y, width: (self.currentVC?.view.bounds.width)!, height: (self.currentVC?.view.bounds.height)!)
                    }
                }
            }
        }else{
//            print("in else")
            // if keyboard is hiding - move the view back to original position
            beginTouches()
            UIView.animate(withDuration: 0.025) {
                self.currentVC?.view.frame = CGRect(x: 0, y: 0, width: (self.currentVC?.view.bounds.width)!, height: (self.currentVC?.view.bounds.height)!)
            }
        }
   
        //MARK:- Moving For all textFeilds
        
//        guard let keyboardRect = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else{
//            return
//        }
//
//        if notification.name == NSNotification.Name.UIKeyboardWillShow || notification.name == NSNotification.Name.UIKeyboardWillChangeFrame{
//
//            UIView.animate(withDuration: 0.3) {
//                ShiftUIViewController.currentVC?.view.frame.origin.y = -keyboardRect.height
//            }
//        }else{
//            beginTouches()
//            ShiftUIViewController.currentVC?.view.frame.origin.y = 0
//        }
        
    }
    
    @objc func endEdit(){ // to hide keyboard when touched elsewhere on screen
//        print("end edit")
        self.currentVC?.view.endEditing(true)
        self.currentVC?.view.frame.origin.y = 0
    }
    
    func beginTouches(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(endEdit))
        self.currentVC?.view.addGestureRecognizer(tap)
    }
    
}
