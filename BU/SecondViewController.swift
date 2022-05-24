//
//  SecondViewController.swift
//  BU
//
//  Created by Gagik Mkrtchyan on 24.05.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    let shared = Singletone()

    override func viewDidLoad() {
        super.viewDidLoad()

//        Singletone.shared.testing()
        shared.testing()
    }

}
