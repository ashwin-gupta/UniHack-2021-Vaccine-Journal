//
//  CountryData.swift
//  UniHack 2021 Vaccine Journal
//
//  Created by Su-Kuen Koh on 6/3/21.
//

import Foundation

enum Country {
    case japan, australia, newZealand, indonesia
    
    init() {
        self = .australia
    }
    
    var countryName: String {
        switch self {
        case .japan:
            return String("Japan")
        case .australia:
            return String("Australia")
        case .newZealand:
            return String("New Zealand")
        case .indonesia:
            return String("Indonesia")
        }
    }
    
    var vaccineList: [String] {
        switch self {
        case .japan:
            return ["Vaccine 1", "Vaccine 2"]
        case .australia:
            return ["Vaccine 1", "Vaccine 2"]
        case .newZealand:
            return ["Vaccine 1", "Vaccine 2"]
        case .indonesia:
            return ["Vaccine 1", "Vaccine 2"]
        }
    }
    
    var vaccineDesc: [String] {
        switch self {
        case .japan:
            return ["Desc 1", "Desc 2"]
        case .australia:
            return ["Desc 1", "Desc 2"]
        case .newZealand:
            return ["Desc 1", "Desc 2"]
        case .indonesia:
            return ["Desc 1", "Desc 2"]
        }
    }
    
}
