//
//  classEventsJSONLoader.swift
//  Field Survey
//
//  Created by Benson Philipose on 11/3/17.
//  Copyright © 2017 Benson Philipose. All rights reserved.
//

import Foundation

class classEventsJSONLoader {
    
    class func load(fileName: String) -> [classificationEvent] {
        var events = [classificationEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            events = classEventJSONParser.parse(data)
            
        }
        
        return events
    }
}
