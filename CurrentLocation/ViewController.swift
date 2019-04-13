//
//  ViewController.swift
//  CurrentLocation
//
//  Created by Akash Padhiyar on 11/04/19.
//  Copyright © 2019 Akash Padhiyar. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController,CLLocationManagerDelegate {
    
//    var locationManager = CLLocationManager()
//    lazy var mapView = GMSMapView()
//

    override func viewDidLoad() {
        super.viewDidLoad()
        //Display Using Logitude and Latitude
        let camera = GMSCameraPosition.camera(withLatitude: 23.0327515, longitude: 72.560088, zoom: 13.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        view = mapView

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 23.0327515, longitude: 72.560088)
        marker.title = "Akash Technolabs"
        marker.snippet = "Ahmedabad"
        marker.map = mapView
       // print(marker)

//        //For Live Location
//        locationManager.delegate = self
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.startUpdatingLocation()

    }
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//
//        let userLocation = locations.last
//
//        let center = CLLocationCoordinate2D(latitude: userLocation!.coordinate.latitude, longitude: userLocation!.coordinate.longitude)
//
//        let camera = GMSCameraPosition.camera(withLatitude: userLocation!.coordinate.latitude,
//                                              longitude: userLocation!.coordinate.longitude, zoom: 13.0)
//        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
//        mapView.isMyLocationEnabled = true
//        self.view = mapView
//
//        locationManager.stopUpdatingLocation()
//
//
//
//}
}
