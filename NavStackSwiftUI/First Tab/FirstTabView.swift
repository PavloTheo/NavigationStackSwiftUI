//
//  FirstTabView.swift
//  NavStackTest
//
//  Created by Pavlo Theodoridis on 2023-05-22.
//

import SwiftUI

struct FirstTabView: View {
    
    @State private var showSettings = false
    @State private var path = NavigationPath() // path includes all data types used in the Navigation stack. Used here and in detail view.
    
    
    var body: some View {
        
        VStack {
            
            NavigationStack(path: $path) {
                
                List {
                    
                    NavigationLink("Go to detail A", value: "Show AAAA")
                    
                    NavigationLink("Go to detail B", value: "Show BBBB")
                    
                    NavigationLink("Go to number 2", value: 2)
                    
                    Button {
                        path.append("GGG")
                    } label: {
                        Text("Show Favorite")
                    }
                    
                    Button {
                        showSettings.toggle()
                    } label: {
                        Text("Settings")
                    }
                    
                  /*  Section("Old") {
                        NavigationLink("Old link to destination") {
                            Text("Old navigation link")
                        }
                    }*/
                }
                .navigationDestination(for: String.self) { textValue in
                    DetailView(text: textValue, path: $path)
                }
                .navigationDestination(for: Int.self) { numberValue in
                    Text("Detail with number \(numberValue)")
                }
                .navigationDestination(isPresented: $showSettings) {
                    SettingsView()
                }
                .navigationTitle("Root view")
            }
            
            VStack {
                
                Text("Path")
                Text("number of detail views on the stack: \(path.count)")
                
                Button {
                    path.removeLast()
                } label: {
                    Text("go back one view")
                }
                
                Button {
                    path = NavigationPath()
                } label: {
                    Text("Go to root view")
                }
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
