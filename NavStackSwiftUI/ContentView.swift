//
//  ContentView.swift
//  NavStackTest
//
//  Created by Pavlo Theodoridis on 2023-05-17.
//

import SwiftUI

struct ContentView: View {
    
    
    
   var body: some View {
       TabView {
           FirstTabView()
               .tabItem {
                   Label("First", systemImage: "plus")
               }
           SecondTabView()
               .tabItem {
                   Label("Second", systemImage: "face.smiling")
               }
           ThirdTabView()
               .tabItem {
                   Label("Third", systemImage: "doc.richtext")
               }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
