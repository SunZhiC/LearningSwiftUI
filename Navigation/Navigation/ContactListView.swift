//
//  ContactListView.swift
//  Navigation
//
//  Created by SuniMac on 2020/9/20.
//

import SwiftUI
class PersonList {
    deinit {
        print("personList obj deinit")
    }
}

struct ContactListView: View {
    
    let personList = PersonList()
    
    var title: String
    var data: [Contact] = Contact.mockData()
    
    var body: some View {
        List(data) { contact in
            ContactRow(contact: contact)
        }
        .navigationBarTitle(title)
        
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(title: "Contacts", data: Contact.mockData())
    }
}


