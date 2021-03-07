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
            return ["HEPATITIS B", "INFLUENZA","RABIES"]
        case .australia:
            return ["YELLOW FEVER", "HEPATITIS B"]
        case .newZealand:
            return ["HEPATITIS B", "INFLUENZA"]
        case .indonesia:
            return ["YELLOW FEVER", "HEPATITIS 1"]
        }
    }
    
    var vaccineDesc: [String] {
        switch self {
        case .japan:
            return ["Moderate presence of Hepatitis B in local population. Vaccination would be recommended", "Northern hemisphere winter risk (November to April). Most common vaccine preventable illness in travellers. Vaccine recommended, effective for 1 year.", "Disease present. Recommendation for vaccination will depend on specific itinerary and activities planned. Generally rabies vaccination is advised for high risk individuals such as veterinarians or animal handlers, cavers. Additionally for higher risk travellers who plan: extended periods outdoors, rural travel, adventurous activities including bicycling; also expats or long-term travellers to endemic regions and children (risk of more severe or risk-prone bites and may not report contact at all)"]
        case .australia:
            return ["A yellow fever vaccination certificate is required for travellers aged 1 year or over arriving from countries with risk of yellow fever transmission (with the exception of Galápagos Islands in Ecuador) and for travellers having transited for more than 12 hours through an airport of a country with risk of yellow fever transmission (with the same exception as mentioned above", "Moderate presence of Hepatitis B in local population. Vaccination would be recommended"]
        case .newZealand:
            return ["Moderate presence of Hepatitis B in local population. Vaccination would be recommended.", "Southern hemisphere winter risk (May to October). Most common vaccine preventable illness in travellers. Vaccine recommended, effective for 1 year."]
        case .indonesia:
            return ["A yellow fever vaccination certificate is required from all travellers aged 9 months arriving from countries with risk of yellow fever transmission.\n\nNo vaccination certificate is required for direct travel from Australia or New Zealand.", "Risk of Hepatitis A infection is high for all travellers, vaccination recommended."]
        }
    }
    
}
