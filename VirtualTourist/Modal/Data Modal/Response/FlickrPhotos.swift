//
//  FlickrPhotos.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 06.10.20.
//

import Foundation

struct FlickrPhotos: Codable {
    
    var page: Int?
    var pages: Int?
    var perPage: Int?
    var total: String?
    var photo: [FlickrPhoto]?
    
    enum CodingKeys: String, CodingKey {
        case page, pages, total, photo
        case perPage = "perpage"
    }
    
}
