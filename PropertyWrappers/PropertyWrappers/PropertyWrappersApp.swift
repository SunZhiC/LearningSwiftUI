//
//  PropertyWrappersApp.swift
//  PropertyWrappers
//
//  Created by SuniMac on 2020/9/19.
//

import SwiftUI

@main
struct PropertyWrappersApp: App {
    
    var body: some Scene {
        WindowGroup {
            let user = User(name: "Jack", age: 20, score: 0)
            PlayerView(episode: Episode.data(), user: user)
                
        }
    }
}

struct PropertyWrappersApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
