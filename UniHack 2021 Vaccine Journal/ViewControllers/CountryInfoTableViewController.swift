//
//  CountryInfoTableViewController.swift
//  UniHack 2021 Vaccine Journal
//
//  Created by Tiffany Kong on 7/3/21.
//

import UIKit

class CountryInfoTableViewController: UITableViewController {
    
    var countrySearched: Country?
    let CELL_VACCINE = "vaccineCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (countrySearched?.vaccineList.count)!
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let vaccineCell = tableView.dequeueReusableCell(withIdentifier: CELL_VACCINE, for: indexPath) as! VaccineTableViewCell
        
        let vaccineName = countrySearched?.vaccineList[indexPath.row]
        let vaccineDesc = countrySearched?.vaccineDesc[indexPath.row]
        vaccineCell.vaccineName.text = vaccineName
        vaccineCell.vaccineDesc.text = vaccineDesc
    
        return vaccineCell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return countrySearched?.countryName
    }

}
