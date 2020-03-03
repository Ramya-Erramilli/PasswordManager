//
//  AddressViewController.swift
//  PasswordManager
//
//  Created by Ramya on 25/07/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class AddressViewController: UIViewController,UITextViewDelegate,UITextFieldDelegate {

    @IBOutlet weak var nameOfAdreseeOutlet: UITextField!
    @IBOutlet weak var firstNameOutlet: UITextField!
    @IBOutlet weak var middleNameOutlet: UITextField!
    @IBOutlet weak var lastNameOutlet: UITextField!
    @IBOutlet weak var address1Outlet: UITextView!
    @IBOutlet weak var address2Outlet: UITextView!
    @IBOutlet weak var cityOutlet: UITextField!
    @IBOutlet weak var stateOutlet: UITextField!
    @IBOutlet weak var postalCodeOutlet: UITextField!
    @IBOutlet weak var countryOutlet: UITextField!
    @IBOutlet weak var genderOutlet: UISegmentedControl!
    @IBOutlet weak var birthdayDatePickerOutlet: UIDatePicker!
    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var phoneNumberOutlet: UITextField!
    @IBOutlet weak var mobileNumberOutlet: UITextField!
    @IBOutlet weak var notesOutlet: UITextView!
        
//    let observer = ShiftUIViewController()
    var activeField:UITextField!
    var lastOffset:CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
  
    }
    override func viewWillDisappear(_ animated: Bool) {
//        observer.removeListeners()
    }
    @IBAction func saveAction(_ sender: UIButton) {
    }
   
    @IBOutlet weak var scrollView: UIScrollView!
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//        activeField = textField
//        lastOffset = self.scrollView.contentOffset
        return true
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
//        observer.activeField = textView as UIView
//        observer.addListeners(currentVC: self, observer: observer)
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
//        observer.activeField = textField as UIView
//        observer.addListeners(currentVC: self, observer: observer)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        activeField = nil
        return true
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
   
    
//    @objc func keyboardWillShow(notification:NSNotification){
//
//        guard let keyboardSize = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue else{
//            return
//        }
//
//        var keyBoardHeight = keyboardSize.height
//
//
//
//        let bottomSpace = self.scrollView.frame.size.height - (activeField?.frame.origin.y)! - (activeField?.frame.size.height)!
//
//        let collapseSpace = keyBoardHeight-bottomSpace
//
//        if collapseSpace>0{
//            self.scrollView.contentOffset = CGPoint(x: self.lastOffset.x,y: collapseSpace+20)
//        }
//
//    }
//
//    @objc func keyboardWillHide(notification:NSNotification){
//
//        self.scrollView.contentOffset = self.lastOffset
//
//
//    }
    
    
   

}

