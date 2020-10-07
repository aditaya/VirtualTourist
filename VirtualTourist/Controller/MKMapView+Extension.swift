//
//  MKMapView+Extension.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 29.09.20.
//

import Foundation
import MapKit
import CoreLocation

extension MKMapView {
    
    // MARK: - Functions
    
    func setMapCenterAndRegion(using coordinate: CLLocationCoordinate2D,
                               region: MKCoordinateRegion) {
        
        self.setCenter(coordinate, animated: true)
        self.setRegion(region, animated: true)
    }
    
}
