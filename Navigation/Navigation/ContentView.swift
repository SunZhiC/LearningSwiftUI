//
//  ContentView.swift
//  Navigation
//
//  Created by SuniMac on 2020/9/20.
//

import SwiftUI

struct ContentView: View {
    var contacts = Contact.mockData()
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(
                    
                    destination: ContactListView(title: "Contacts", data: contacts),
                    label: {
                        Text("Contacts")
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
