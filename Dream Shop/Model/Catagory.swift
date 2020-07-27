//
//  Catagory.swift
//  Dream Shop
//
//  Created by Salman Farshi on 20/7/20.
//  Copyright © 2020 Salman Farshi. All rights reserved.
//

import Foundation
import FirebaseFirestore

import UIKit

class Category {
    
    var id: String
    var name: String
    var image: UIImage?
    var imageName: String?
    
    init(_name: String, _imageName: String) {
        
        id = ""
        name = _name
        imageName = _imageName
        image = UIImage(named: _imageName)
    }
    
    init(_dictionary: NSDictionary) {
        id = _dictionary["onjectId"] as! String
        name = _dictionary["name"] as! String
        image = UIImage(named: _dictionary["imageName"] as? String ?? "")
    }
}
