//
//  MapPin+Extension.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 06.10.20.
//

import Foundation

extension MapPin {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
    
}
