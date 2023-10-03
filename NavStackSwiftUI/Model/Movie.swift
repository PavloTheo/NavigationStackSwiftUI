//
//  Movie.swift
//  NavStackTest
//
//  Created by Pavlo Theodoridis on 2023-05-23.
//

import Foundation

struct Movie: Identifiable, Hashable, Codable {
    var title: String
    let id: UUID
    
    init(title: String) {
        self.title = title
        self.id = UUID()
    }
    
    static func examples() -> [Movie] {
        [Movie(title: "The Godfather"),
         Movie(title: "2001: A Space Odyssey"),
         Movie(title: "Dumb and Dumber")]
     }
}
