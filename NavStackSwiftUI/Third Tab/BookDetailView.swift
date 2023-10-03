//
//  BookDetailView.swift
//  NavStackTest
//
//  Created by Pavlo Theodoridis on 2023-05-23.
//

import SwiftUI

struct BookDetailView: View {
    
    let book: Book
    
    var body: some View {
        VStack {
            Text("Book detail view")
            
            Divider()
            
            NavigationLink("suggestion 1", value: SelectionState.book(Book(title: "suggestion 1")))
            
            NavigationLink("suggestion 2", value: SelectionState.book(Book(title: "suggestion 2")))
            
            NavigationLink("suggestion 3", value: SelectionState.book(Book(title: "suggestion 3")))
        }
        .navigationTitle(book.title)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: Book(title: "Blood Meridian"))
    }
}
