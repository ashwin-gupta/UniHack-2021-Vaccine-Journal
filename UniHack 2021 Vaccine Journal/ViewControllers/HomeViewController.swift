//
//  HomeViewController.swift
//  UniHack 2021 Vaccine Journal
//
//  Created by Ashwin Gupta on 6/3/21.
//

import UIKit
import MapKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        
        // Setting up a gesture
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        
        // Allows tapping on other objects
        tap.cancelsTouchesInView = false
        
        // Adding the gesture
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        // Dismisses the keyboard
        view.endEditing(true)
    }
}


class HomeViewController: UIViewController {
    
    // UI Elements
    
    @IBAction func countryField(_ sender: Any) {
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
