//
//  classEventsJSONParser.swift
//  Field Survey
//
//  Created by Benson Philipose on 11/3/17.
//  Copyright © 2017 Benson Philipose. All rights reserved.
//

import Foundation

class classEventJSONParser {
    static let dateFormatter = DateFormatter()
   class func parse(_ data: Data) -> [classificationEvent] {
    
    var classEvents = [classificationEvent]()
    dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
    if let json = try? JSONSerialization.jsonObject(with: data, options: []),
        let root = json as? [String: Any],
        let status = root["status"] as? String,
        status == "ok" {
        
        if let events = root["events"] as? [Any] {
            for event in events {
                if let event = event as? [String: String] {
                    if let classificationName = event["classification"],
                        let title = event["title"],
                        let description = event["description"],
                        let dateString = event ["date"],
                        let date = dateFormatter.date(from: dateString) {
                        
                        if let ClassificationEvent = classificationEvent(classificationName: classificationName, title: title, description: description, date: date) {
                            
                            classEvents.append(ClassificationEvent)
                        }
                    }
                }
            }
        }
    }


    return classEvents
    }
}
