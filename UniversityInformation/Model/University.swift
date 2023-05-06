//
//  University.swift
//  UniversityInformation
//
//  Created by hakkı can şengönül on 6.05.2023.
//

import Foundation
struct University: Decodable {
    let webPages: [String]
    let country: String
    let domains: [String]
    let name: String
    
    private enum CodingKeys: String, CodingKey{
        case country, domains, name
        case webPages = "web_pages"
    }
}
