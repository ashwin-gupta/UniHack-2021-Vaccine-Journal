//
//  CountryInfoTableViewController.swift
//  UniHack 2021 Vaccine Journal
//
//  Created by Tiffany Kong on 7/3/21.
//

import UIKit

class CountryInfoTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var countrySearched: Country?
    let CELL_VACCINE = "vaccineCell"
    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var errorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.table.dataSource = self
        self.table.delegate = self
        if let countrySearched = countrySearched {
                    countryName.text = countrySearched.countryName
                    errorMessage.text = ""
                }
                else {
                    countryName.text = "Sorry!"
                    errorMessage.text = "We do not have current information for that country"
                }
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let countrySearched = countrySearched {
            return (countrySearched.vaccineList.count)
        }
        else {
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let vaccineCell = tableView.dequeueReusableCell(withIdentifier: CELL_VACCINE, for: indexPath) as! VaccineTableViewCell
        
        let vaccineName = countrySearched?.vaccineList[indexPath.row]
        let vaccineDesc = countrySearched?.vaccineDesc[indexPath.row]
        vaccineCell.vaccineName.text = vaccineName
        vaccineCell.vaccineDesc.text = vaccineDesc
    
        return vaccineCell
    }
}
