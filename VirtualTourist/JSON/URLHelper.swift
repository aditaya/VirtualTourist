//
//  URLHelper.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 29.09.20.
//

import Foundation

class URLHelper {
    
    // MARK: - Initialization
    
    private init() {}
    
    // MARK: - Functions
    
    static func escapedParameters(from parameters: [String: Any]) -> String {
        guard !parameters.isEmpty else { return "" }
        
        var keyValuePairs = [String]()
        for (key, value) in parameters {
            // make sure that it is a string value
            let stringValue = "\(value)"
            // escape it
            let escapedValue = stringValue.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            // append it
            keyValuePairs.append(key + "=" + "\(escapedValue!)")
        }
        
        return "?\(keyValuePairs.joined(separator: "&"))"
    }
    
}
