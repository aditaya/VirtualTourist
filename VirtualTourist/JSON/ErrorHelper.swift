//
//  ErrorHelper.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 29.09.20.
//

import Foundation

class ErrorHelper {
    
    // MARK: - Initialization
    
    private init() {}
    
    // MARK: - Functions
    
    static func logServiceError(_ error: ServiceError?) {
        guard let error = error else { return }
        debugPrint(error.localizedDescription + " Error code: \(error.code).")
    }
    
    static func logPersistenceError(_ error: PersistenceError?) {
        guard let error = error else { return }
        debugPrint(error.localizedDescription + " Error code: \(error.code).")
    }
    
    static func logSerializationError(_ error: SerializationError?) {
        guard let error = error else { return }
        debugPrint(error.localizedDescription + " Error code: \(error.code).")
    }
    
}
