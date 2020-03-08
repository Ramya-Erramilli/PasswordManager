//
//  PasswordViewController.swift
//  PasswordManager
//
//  Created by Ramya on 24/07/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class PasswordViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate {

    // MARK:- Outlets
    @IBOutlet weak var hideButton: UIButton!
    @IBOutlet weak var passwordOutlet: UITextField!
    @IBOutlet weak var notesOutlet: UITextView!
    @IBOutlet weak var userNameOutlet: UITextField!
    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var urlOutlet: UITextField!
    
    var activeFeild:UIView!
    
   let observer = ShiftUIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        observer.removeListeners()
    }
    
    @IBAction func hideAction(_ sender: UIButton) {
        changeImage()
    }
    
    @IBAction func saveAction(_ sender: UIButton) {
        
        
        
    }
    
    //MARK:- Hide/UnHide for password Image
    var flag = true
    func changeImage(){
        if flag{
            hideButton.setImage(UIImage(named: "Unhide"), for: .normal)
            hideButton.imageView?.sizeToFit()
            passwordOutlet.isSecureTextEntry = false
            flag = false
        }else{
            hideButton.setImage(UIImage(named: "Hide"), for: .normal)
            hideButton.imageView?.sizeToFit()
            passwordOutlet.isSecureTextEntry = true
            flag = true
        }
    }
    
    //MARK:- Text Field delgates - Listeners added here so that active field is not nil.
   
    func textFieldDidBeginEditing(_ textField: UITextField) {
//        print("text begin")
        observer.addListeners(currentVC: self, observer: observer)
        observer.activeField = textField
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        observer.addListeners(currentVC: self, observer: observer)
        observer.activeField = textView
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
}
