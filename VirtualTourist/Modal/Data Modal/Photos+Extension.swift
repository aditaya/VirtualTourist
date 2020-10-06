//
//  Photos+Extension.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 06.10.20.
//

import Foundation


extension Photos {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
    
    /// Creates an URL to perform an HTTP request for the API using a FlickrPhoto's parameters.
    func imageURL(forSize size: FlickrPhotoSize = .thumbnail) -> String? {
        guard let server = server, let id = id, let secret = secret else {
            return nil
        }
        return "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret)_\(size.rawValue).jpg"
    }
    
}
