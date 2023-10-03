//
//  ModelDataManager.swift
//  NavStackTest
//
//  Created by Pavlo Theodoridis on 2023-05-23.
//

import Foundation

class ModelDataManager: ObservableObject {
    
    @Published var books = Book.examples()
    @Published var songs = Song.examples()
    @Published var movies = Movie.examples()
    
}
