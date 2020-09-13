//
//  ViewController.swift
//  iOSClasswork2
//
//  Created by Bodour Alrashidi on 6/3/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    /// 👀 **NOTE** هذه المصفوفة التي ستقوم بالإضافة إليها `emojiArray`
    var emojiArray : [String] = []
    
    @IBOutlet weak var animalTextField: UITextField!
    @IBOutlet weak var animalEmojiLabel: UILabel!
    
    
    @IBAction func AddAnimalToArray(_ sender: Any) {
        var animal = animalTextField.text!
        
        
        
        // MARK: - 1️⃣ emojiArray  الي  animal قم باضافه متغير
        
       
        if animal == "Cats" {
            emojiArray.append("🐱")
        } else if animal == "Dog" {
            emojiArray.append("🐶")
            
        }
         else if animal == "Cow" {
                  emojiArray.append("🐮")
                  
                } else if animal == "Lion" {
                        emojiArray.append("🦁")
                        
                      } else if animal == "monkey" {
                              emojiArray.append("🐵")
                              
                            } else if animal == "Owl" {
                                    emojiArray.append("🦉")
    
                                    
                                }
        
        else{
            emojiArray.append("❓")
        
        }
        
        
        
        
        
        
        // MARK: - لا تقم بتغيير هذا السطر⚠️⚠️
        animalTextField.text = ""
        animalEmojiLabel.text = ""
     // MARK:  تقوم هذه الدالة بعرض الإيموجيز للحيوانات في الأسفل باستعمال `for in`
        for label in emojiArray
        {
            animalEmojiLabel.text! += label
        }
        /// **BONUS**: 🎁 قم بمسح مكونات المصفوفة بعد عرضها
        emojiArray.removeAll()
    
        
        
        
        hidekeyboard()
    }

    func hidekeyboard()  {
        animalTextField.resignFirstResponder()
    
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hidekeyboard()
        return true
    }
    
    override func viewDidLoad() {
        animalTextField.delegate = self
    }
}

