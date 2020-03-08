//
//  CardViewController.swift
//  PasswordManager
//
//  Created by Ramya on 25/07/19.
//  Copyright © 2019 Ramya. All rights reserved.
//

import UIKit

class CardViewController: UIViewController,UITextViewDelegate,UITextFieldDelegate {

    @IBOutlet weak var cardTypeOutlet: UITextField!
    @IBOutlet weak var nameOnCardOutlet: UITextField!
    @IBOutlet weak var cardNumberOutlet: UITextField!
    @IBOutlet weak var bankName: UITextField!
    @IBOutlet weak var cvvOutlet: UITextField!
    @IBOutlet weak var expiryDateOutlet: UIDatePicker!
    @IBOutlet weak var notesOutlet: UITextView!
    
    let observer = ShiftUIViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        observer.removeListeners()
    }
    @IBAction func saveAction(_ sender: UIButton) {
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        observer.activeField = textField as UIView
        observer.addListeners(currentVC: self, observer: observer)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        observer.activeField = textView as UIView
        observer.addListeners(currentVC: self, observer: observer)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
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

}
