//
//  CountryInfoViewController.swift
//  UniHack 2021 Vaccine Journal
//
//  Created by Su-Kuen Koh on 6/3/21.
//

import UIKit

class CountryInfoViewController: UIViewController {

    var countrySearched: Country?
    
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var vaccineInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let countrySearched = countrySearched {
            countryName.text = countrySearched.countryName
            vaccineInfo.text = countrySearched.vaccineList
        }
        else {
            countryName.text = "Error"
            vaccineInfo.text = "Sorry, we do not have current information for that country"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
