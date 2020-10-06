//
//  JSON.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 29.09.20.
//
import Foundation


class JSON {
    
    class func serialize(dictionary: [String: Any]) -> Data? {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: dictionary, options: .prettyPrinted)
            return jsonData
        } catch {
            return nil
        }
    }
    
    class func deserialize(data: Data) -> [String: Any]? {
        do {
            let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            return jsonDictionary as? [String: Any]
        } catch {
            return nil
        }
    }
    
}
