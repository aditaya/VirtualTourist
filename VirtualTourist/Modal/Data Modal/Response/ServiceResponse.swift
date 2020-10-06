//
//  ServiceResponse.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 06.10.20.
//

import Foundation

struct ServiceResponse {
    
    var data: Data?
    
    var rawResponse: String?
    var response: HTTPURLResponse?
    var request: URLRequest?

    var errorResponse: ErrorResponse?
}
