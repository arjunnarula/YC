//
//  ProfileController.swift
//  Ed's work
//
//  Created by Arjun Narula on 24/09/2019.
//  Copyright © 2019 Arjun Narula. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    @IBOutlet weak var profileLabel: UILabel!
    
    override func loadView() {
        super.loadView()
        let defaults = UserDefaults.standard
        defaults.set("Hi, I am Ed. I study at Imperial College London, and I am about to go into my third year. I enjoy watching Netflix, going out with my friends, and doing Archery.", forKey: "profile")
        self.setLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.setLabel()
        print("HERRE")
    }
    
    func setLabel(){
        if let string = UserDefaults.standard.string(forKey: "profile") {
            self.profileLabel.text = string
        }
    }
}
