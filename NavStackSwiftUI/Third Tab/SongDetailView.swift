//
//  SongDetailView.swift
//  NavStackTest
//
//  Created by Pavlo Theodoridis on 2023-05-23.
//

import SwiftUI

struct SongDetailView: View {
    
    let song: Song
    @EnvironmentObject var modelData: ModelDataManager
    @EnvironmentObject var navigationStateManager: NavigationStateManager
    
    var body: some View {
        VStack {
            Text("Song Detail")
            Text(song.artist)
                .bold()
            Text("\(song.year)")
            
            Divider()
            
            
            VStack(alignment: .leading) {
                Text("People also liked")
                
                ForEach(modelData.songs) { song in
                    NavigationLink(value: SelectionState.song(song)) {
                        Label(song.title, systemImage: "music.note")
                    }
                }
            }
            Button {
                navigationStateManager.popToRoot()
            } label: {
                Text("go to root")
            }
        }
        .navigationTitle(song.title)
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button {
                    navigationStateManager.goToSettings()
                } label: {
                    Image(systemName: "gear")
                }
            }
        }
    }
}

struct SongDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            SongDetailView(song: Song(title: "Echoes",
                                      artist: "Pink Floyd",
                                      year: 1971))
                .environmentObject(ModelDataManager())
                .environmentObject(NavigationStateManager())
        }
    }
}
