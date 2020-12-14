//
//  ViewController.swift
//  Pool
//
//  Created by Sato on 3/28/20.
//  Copyright © 2020 Sato. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let mydb = Firestore.firestore()
        
        mydb.collection("test").document("testt").setData([
            "player":"andrew",
            "playe":"andre",
            "test": 201
        ])  { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }

        
    }

}

