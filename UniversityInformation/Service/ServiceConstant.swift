//
//  ServiceConstant.swift
//  UniversityInformation
//
//  Created by hakkı can şengönül on 6.05.2023.
//

import Foundation
class ServiceConstant {
    
    public static var shared = ServiceConstant()
    
    private init(){
        
    }
    
    public var url: String{
        get{
            return "http://universities.hipolabs.com/search?country=turkey"
        }
    }
    
}
