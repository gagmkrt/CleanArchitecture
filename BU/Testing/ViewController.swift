//
//  ViewController.swift
//  BU
//
//  Created by Gagik Mkrtchyan on 24.05.22.
//

import UIKit

protocol ConfigureUIFromData: AnyObject {
    func configure(data: [LocalModel])
}

class ViewController: UIViewController {
    
    var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.viewController = self
        
    }
    
    @IBAction func action(_ sender: UIButton) {
        viewModel.click()
    }
}

extension ViewController: ConfigureUIFromData {
    func configure(data: [LocalModel]) {
        print(data.first?.title)
        print(data.first?.subTitle)
    }
}
