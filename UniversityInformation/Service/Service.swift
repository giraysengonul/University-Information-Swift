//
//  Service.swift
//  UniversityInformation
//
//  Created by hakkı can şengönül on 6.05.2023.
//

import Foundation
import Alamofire
class Service {
    static func getData(){
        
        AF.request(ServiceConstant.shared.url).response { response in
            
            if let error = response.error{
                print(error.localizedDescription)
                return
            }
            guard let data = response.data else{ return }
            print(String(data: data, encoding: .utf8))
            
            
        }
        
    }
}
