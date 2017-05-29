//
//  Tiger.swift
//  LionsAndTiger
//
//  Created by kabimany on 5/28/17.
//  Copyright © 2017 yehkay. All rights reserved.
//

import Foundation
import UIKit

struct Tiger{
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    init( age: Int, name: String, breed: String, image: UIImage) {
        self.age = age
        self.name = name
        self.breed = breed
        self.image = image
    }
    
}
