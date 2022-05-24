//
//  ViewModel.swift
//  BU
//
//  Created by Gagik Mkrtchyan on 24.05.22.
//

import Foundation

protocol GetDataFromSeviceProtocol {
    func getData(data: [BackendModel])
}

protocol ClickButtonProtocol {
    func click()
}

class ViewModel {
    
    weak var viewController: ConfigureUIFromData?
    private var service: SeviceLogic?
    
    init() {
        setup()
    }
    
    func setup() {
        let service = Services()
        service.viewModel = self
        self.service = service
    }
}

// Get data from Service
extension ViewModel: GetDataFromSeviceProtocol {
    func getData(data: [BackendModel]) {
        
        let viewModel = data.map { model -> LocalModel in
            let cellModel = LocalModel(title: "Title", subTitle: "SubTitle")
            return cellModel
        }
        
        viewController?.configure(data: viewModel)
    }
}

// Click from View for Service call
extension ViewModel: ClickButtonProtocol {
    func click() {
        service?.fetchData()
    }
}
