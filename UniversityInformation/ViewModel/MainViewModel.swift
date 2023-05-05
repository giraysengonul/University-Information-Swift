//
//  MainViewModel.swift
//  UniversityInformation
//
//  Created by hakkı can şengönül on 5.05.2023.
//

import Foundation

class MainViewModel {
    
    func getData(){
        Service.getData()
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return 10
    }
    
    
}
