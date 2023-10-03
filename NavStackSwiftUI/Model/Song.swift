//
//  Song.swift
//  NavStackTest
//
//  Created by Pavlo Theodoridis on 2023-05-23.
//

import Foundation

struct Song: Identifiable, Hashable, Codable {
    var title: String
    var artist: String
    var year: Int
    let id: UUID
    
    init(title: String, artist: String, year: Int) {
        self.title = title
        self.year = year
        self.artist = artist
        self.id = UUID()
    }
    
    static func examples() -> [Song] {
        [Song(title: "Echoes", artist: "Pink Floyd", year: 1971),
         Song(title: "Phaedra", artist: "Tangerine Dream", year: 1974),
         Song(title: "Obombration", artist: "Deathspell Omega", year: 2007)]
    }
}
