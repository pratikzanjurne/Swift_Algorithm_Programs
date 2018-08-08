//
//  ViewController.swift
//  FoodTrackerNew
//
//  Created by BridgeLabz Solutions LLP  on 8/7/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet var nameTextfield: UITextField!
    @IBOutlet var mealNamelabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextfield.delegate = self
    }

    @IBAction func UIButton(_ sender: Any) {
        mealNamelabel.text = "Default"
        
    }
    @IBAction func selectImageFromLibrary(_ sender: UITapGestureRecognizer) {
        nameTextfield.resignFirstResponder()
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNamelabel.text = textField.text
    }
}

