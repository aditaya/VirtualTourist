//
//  DataController+AutoSave.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 29.09.20.
//

import Foundation

extension DataController {
    
    // MARK: - Auto Saving Function
    
    func autoSaveViewContext(interval: TimeInterval = 30) {
//        debugPrint("Auto saving view context")
        
        guard interval > 0 else { return }
        
        if viewContext.hasChanges {
            try? viewContext.save()
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
            self.autoSaveViewContext(interval: interval)
        }
    }
    
}

