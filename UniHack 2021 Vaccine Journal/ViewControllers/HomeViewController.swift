//
//  HomeViewController.swift
//  UniHack 2021 Vaccine Journal
//
//  Created by Ashwin Gupta on 6/3/21.
//

import UIKit
import MapKit

//extension UIViewController {
//    func hideKeyboardWhenTappedAround() {
//
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
//    }
//
//    @objc func dismissKeyboard() {
//        view.endEditing(true)
//    }
//}


class HomeViewController: UIViewController, MKMapViewDelegate, UITextFieldDelegate {
    
    // UI Elements

    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var mapView: MKMapView!
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {}

    
    // Variable
    let searchableCountries = [Country.australia, Country.newZealand, Country.japan, Country.indonesia]
    

//    @IBAction func searchCountry(_ sender: Any) {
//
//        let request = MKLocalSearch.Request()
//        request.naturalLanguageQuery = countryField.text
//        request.region = mapView.region
//
//        let search = MKLocalSearch(request: request)
//
//        // Completion handler
//        search.start { (response, error) in
//            if response == nil {
//                print("Error")
//            }
//            else {
//
//                // Sets the coodinates for the first element it finds
//                let latitude = response!.boundingRegion.center.latitude
//                let longitude = response!.boundingRegion.center.longitude
//
//                let countryCoordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
//
//                // Adding annotation adn setting region plus animation
//                let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//                let region = MKCoordinateRegion(center: countryCoordinate, span: span)
//                self.mapView.setRegion(region, animated: true)
//
//
//            }
//        }
//
//
//
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.delegate = self
        countryField.delegate = self

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        
        // This causes crashes when uncommented
//        textField.resignFirstResponder()  //if desired
        performAction()
        performSegue(withIdentifier: "Show Country Info", sender: AnyObject.self)
        return true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let enteredCountry = countryField.text else {return}
        for country in searchableCountries {
            if (enteredCountry == country.countryName) {
                let destination = segue.destination as? CountryInfoViewController
                destination?.countrySearched = country
                break
            }
        }
    }

    func performAction() {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = countryField.text
        request.region = mapView.region
    
        let search = MKLocalSearch(request: request)
        
        // Completion handler
        search.start { (response, error) in
            if let response = response {

                let latitude = response.boundingRegion.center.latitude
                let longitude = response.boundingRegion.center.longitude
                
                // Adding annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.countryField.text
                annotation.coordinate = CLLocationCoordinate2DMake(latitude, longitude)
                self.mapView.addAnnotation(annotation)
                
                // Setting the region
                let span = MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
                let region = MKCoordinateRegion(center: annotation.coordinate, span: span)
                self.mapView.setRegion(region, animated: true)
                
            }
            
            else {
                print("Error")
            }
        }
    }
        
    func displayErrorMessage(_ errorMessage: String) {
        let alertController = UIAlertController(title: "Error", message: errorMessage, preferredStyle: UIAlertController.Style.alert)
        
        
        
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
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
