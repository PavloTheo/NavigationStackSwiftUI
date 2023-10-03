//
//  MovieDetailView.swift
//  NavStackTest
//
//  Created by Pavlo Theodoridis on 2023-05-23.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    
    
    var body: some View {
        VStack {
            Text("Movie detail view")
        }
        .navigationTitle(movie.title)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie(title: "The Godfather"))
    }
}
