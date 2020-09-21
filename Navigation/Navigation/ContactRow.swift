//
//  ContactRow.swift
//  Navigation
//
//  Created by SuniMac on 2020/9/20.
//

import SwiftUI
class Person {
    deinit {
        print("person obj deinit")
    }
}

struct ContactRow: View {
    var person = Person()
    
    var contact: Contact
    
    @State private var isPresented = false
    var body: some View {
        Button(action: {
            self.isPresented.toggle()
        }, label: {
            HStack {
                Text(contact.name)
                    .frame(width: 120, alignment: .leading)
                Text(contact.address)
                    .frame(alignment: .leading)
                Spacer()
                Text(contact.phoneNumber)
                    .frame(alignment: .trailing)
            }
        })
        .sheet(isPresented: $isPresented, onDismiss: {
            print("Modal dismissed. State now: \(self.isPresented)")
        }, content: {
            ContactProfileView(contact: contact, showModal: self.$isPresented)
        })
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Contact.mockData()[0])
    }
}
