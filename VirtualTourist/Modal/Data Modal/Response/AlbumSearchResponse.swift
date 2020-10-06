//
//  AlbumSearchResponse.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 06.10.20.
//

import Foundation

struct AlbumSearchResponse: Codable {
    
    var photos: FlickrPhotos?
    var status: String?
    var code: Int?
    var message: String?
    
    enum CodingKeys: String, CodingKey {
        case photos, code, message
        case status = "stat"
    }
    
}
