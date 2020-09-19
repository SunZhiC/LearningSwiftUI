//
//  ContentView.swift
//  PropertyWrappers
//
//  Created by SuniMac on 2020/9/19.
//

import SwiftUI


struct PlayerView: View {
    var episode: Episode
    @ObservedObject var user: User
    
    @State private var isPlaying: Bool = false

    var body: some View {
        VStack {
            
            Text(episode.title)
                .font(.title)
            if isPlaying {
                Text(episode.description)
                    .font(.body)
            }
            
            PlayButton(isPlaying: $isPlaying, user: user)

        }
        .padding()
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(episode: Episode.data(), user: User(name: "", age: 0, score: 0))
            
            
    }
}
