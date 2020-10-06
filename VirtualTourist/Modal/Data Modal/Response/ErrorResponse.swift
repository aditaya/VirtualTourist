//
//  ErrorResponse.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 06.10.20.
//

import Foundation

struct ErrorResponse: Codable, Error {
    
    var code: Int?
    var message: String?
    
}
