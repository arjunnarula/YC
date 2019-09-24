//
//  CardsDataModel.swift
//  Ed's work
//
//  Created by Arjun Narula on 23/09/2019.
//  Copyright © 2019 Arjun Narula. All rights reserved.
//

import UIKit
struct CardsDataModel {
    
    var bgColor: UIColor
    var text : String
    var image : String
    
    init(bgColor: UIColor, text: String, image: String) {
        self.bgColor = bgColor
        self.text = text
        self.image = image
        
    }
}
