//
//  Hike.swift
//  Hiking
//
//  Created by Maxim Mitin on 9.05.22.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Salmonberry Trail", imageURL: "sal", miles: 6),
            Hike(name: "Tom, Dick and Harry Mountain", imageURL: "tdm", miles: 5.9),
            Hike(name: "Tanamana Falls", imageURL: "tan", miles: 9)
        ]
        
    }
}
