//
//  MainViewCellViewModel.swift
//  UniversityInformation
//
//  Created by hakkı can şengönül on 6.05.2023.
//

import UIKit
struct MainViewCellViewModel {
    private let model: University
    init(model: University) {
        self.model = model
    }
    var url: URL?{
        return URL(string: model.webPages.first ?? "https://www.google.com")
    }
    var name: String?{
        return model.name
    }
}
