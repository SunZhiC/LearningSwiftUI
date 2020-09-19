//
//  UserProfile.swift
//  PropertyWrappers
//
//  Created by SuniMac on 2020/9/19.
//

import SwiftUI

struct UserProfile: View {
    
    @ObservedObject var user: User = User()
    var body: some View {
        VStack {
            Text("\(self.user.name)")
            Text("\(self.user.age)")
            Text("\(self.user.score)")
        }
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
