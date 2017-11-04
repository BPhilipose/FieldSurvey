//
//  classification.swift
//  Field Survey
//
//  Created by Benson Philipose on 11/3/17.
//  Copyright © 2017 Benson Philipose. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case plant
    case mammal
    case bird
    case fish
    case reptile
    case insect
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
