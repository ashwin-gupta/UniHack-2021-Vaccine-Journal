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
    
    var vaccineList: String {
        switch self {
        case .japan:
            return String("Japanese mandatory vaccines ")
        case .australia:
            return String("Aus mandatory vaccines")
        case .newZealand:
            return String("NZ mandatory vaccines")
        case .indonesia:
            return String("Indonesian mandatory vaccines")
        }
    }
    
}
