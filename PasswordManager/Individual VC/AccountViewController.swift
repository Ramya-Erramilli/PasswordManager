//
//  AccountViewController.swift
//  PasswordManager
//
//  Created by Ramya on 24/07/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController,UITextFieldDelegate,UITextViewDelegate {

    
    @IBOutlet weak var nameOfTheBankOutlet: UITextField!
    @IBOutlet weak var accountNumberOutlet: UITextField!
    @IBOutlet weak var ifscCodeOutlet: UITextField!
    @IBOutlet weak var accountTypePicker: UIPickerView!
  
    let observer = ShiftUIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillDisappear(_ animated: Bool) {
        observer.removeListeners()
    }
    @IBAction func saveAction(_ sender: UIButton) {
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        observer.addListeners(currentVC: self, observer: observer)
        observer.activeField = textField
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        observer.addListeners(currentVC: self, observer: observer)
        observer.activeField = textView as UIView
    }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
  
}
