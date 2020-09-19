//
//  PlayButton.swift
//  PropertyWrappers
//
//  Created by SuniMac on 2020/9/19.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool

    @ObservedObject var user: User = User(name: "Jack", age: 20, score: 0)
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
            user.score += 1
        }) {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle")
                .resizable()
        }
        .frame(width: 100, height: 100, alignment: .center)
        
        
        UserProfile(user: user)
        
    }
}

struct PlayButton_Previews: PreviewProvider {
    @State static private var isPlaying = false
    static var previews: some View {
        PlayButton(isPlaying: $isPlaying, user: User(name: "Jack", age: 20, score: 0))
    }
}
