//
//  Service.swift
//  BU
//
//  Created by Gagik Mkrtchyan on 24.05.22.
//

import Foundation

protocol SeviceLogic {
    func fetchData()
}

class Services: SeviceLogic {
    
    var viewModel: GetDataFromSeviceProtocol?
    
    func fetchData() {
    
        //To Do Request
        var model = [BackendModel]()
        let response = BackendModel(title: "J", subTitle: "K")
        model.append(response)
        viewModel?.getData(data: model)
    }
}
