//
//  ViewController.swift
//  CoreLocationDemo
//
//  Created by Mandeep Singh on 24/04/18.
//  Copyright © 2018 Mandeep Singh. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    var userCoords = CLLocationCoordinate2D(latitude: 0, longitude: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Fetch User Current Location
        self.fetchUserCurrentLocation()
    }
    
    func fetchUserCurrentLocation() {
        
        let locationFetch = FetchLocation.SharedManager
        locationFetch.parentObject = self
        locationFetch.startUpdatingLocation()
        locationFetch.completionBlock = { [unowned self] (userCoordinates, error) in
            
            if error != nil {
                print(error?.localizedDescription ?? "")
            }
            
            if let userLocation = userCoordinates as? CLLocationCoordinate2D {
                print(userLocation.latitude, userLocation.longitude)
                self.userCoords = userLocation
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

