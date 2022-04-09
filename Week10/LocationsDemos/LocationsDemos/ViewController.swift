//
//  ViewController.swift
//  LocationsDemos
//
//  Created by lee bennett on 3/30/22.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        print ("\(#function) \(manager.authorizationStatus.rawValue)")
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("\(#function)")
        
//        let location1 = CLLocation()
//        let location2 = CLLocation()
//
//        let distance = location1.distance(from: location2)
//
        if let location = locations.first {
//            location.t
            print("user location : lat \( location.coordinate.latitude), lng \( location.coordinate.longitude)")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("\(#function) \(error.localizedDescription)")
    }

    let locationManger = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        locationManger.desiredAccuracy = kCLLocationAccuracyBest
        locationManger.distanceFilter = 0
        locationManger.delegate = self
        locationManger.requestAlwaysAuthorization()
        
        locationManger.startUpdatingLocation()
        
        
        // Concurrency Notes
        
        // Run in main / UI thread
//        let a = 1
//        let b = 2
//        let c = a + b
        
        // Memory is fast
       
        // Disk operations / input output is slow
        
        // Network operation is INCREDIBLY SLOW!!!!
        
        // Golden rules of concurrency and threading
        
        // 1. Put long running operations in a seperate execution environment / thread --> background / worker threads
//        DispatchQueue.global().async {
//
//        }
        
        // 2. UI updates NEEDS to be done in the main / UI thread
//        DispatchQueue.main.async {
//
//        }
//
        
        // Operation Queues - object oriented approach to managing concurreny tasks
            // progress property
            // priority
            // cancellation
            //
        
    }


}

