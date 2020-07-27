//
//  firebaseCollecetionReference.swift
//  Dream Shop
//
//  Created by Salman Farshi on 20/7/20.
//  Copyright © 2020 Salman Farshi. All rights reserved.
//

import Foundation
import FirebaseFirestore
enum FCollectionReference : String{
    case User
    case Catagory
    case Items
    case Basket
}
func firebaseReference (collectionReference: FCollectionReference)->CollectionReference{
    
    return Firestore.firestore().collection(collectionReference.rawValue)
}
