//
//  ProfileEditController.swift
//  Ed's work
//
//  Created by Arjun Narula on 24/09/2019.
//  Copyright © 2019 Arjun Narula. All rights reserved.
//

import UIKit

class ProfileEditController: UIViewController {
    
    @IBOutlet weak var text: UITextView!

    
    override func loadView() {
        super.loadView()
        if let string = UserDefaults.standard.string(forKey: "profile") {
            self.text.text = string
        }

    }
    
    @IBAction func backButton(){
        let defaults = UserDefaults.standard
        defaults.set("Hi, I am Ed. I study at Imperial College London, and I am about to go into my third year. I enjoy watching Netflix, going out with my friends, and doing Archery, and football.", forKey: "profile")
        self.dismiss(animated: true, completion: nil)
        
    }
}
