//
//  Episode.swift
//  PropertyWrappers
//
//  Created by SuniMac on 2020/9/19.
//

import Foundation


struct Episode {
    var title: String
    var description: String
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    static func data() -> Episode {
        Episode(title: "What is Episode", description: "An episode is a coherent narrative unit within a larger dramatic work such as a film or television series. An episode is to a sequence as a chapter is to a book. Most are from 20 to 40 minutes in length.")
    }
}

