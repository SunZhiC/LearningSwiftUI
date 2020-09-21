//
//  ProfileView.swift
//  ConvertViewControllerToSwiftUI
//
//  Created by SuniMac on 2020/9/18.
//  Copyright © 2020 SunShine. All rights reserved.
//

import SwiftUI

struct ContactProfileView: View {
    
    var contact: Contact
    
    @Binding var showModal: Bool
    @State var showingActionSheet: Bool = false
    
    var body: some View {

        GeometryReader { geometry in
            
            HStack {
                Spacer()
                
                Button("Done") {
                    self.showModal = false
                }
                .padding(20)
            }
            
            VStack {
                
                    Image(uiImage:(UIImage(named: contact.avatarImage ?? "") ?? UIImage(systemName: "person.fill"))!)
                        .resizable()
                        .frame(width: 200, height: 200, alignment: .center)
                        .cornerRadius(100, antialiased: true)
                        .shadow(radius: 10)
                
                
                
                Text("\(contact.name)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Text("\(contact.address)")
                    .font(.headline)
                    .foregroundColor(.blue)
                
                Text("\(contact.phoneNumber)")
                    .foregroundColor(.blue)
                    .gesture(TapGesture().onEnded({ (_) in
                        self.showingActionSheet = true
                    }))
                    .actionSheet(isPresented: $showingActionSheet) {
                        ActionSheet(title: Text("Call"), message: nil, buttons: [
                            .default(Text("Call \(contact.phoneNumber)"), action: {
                                self.showingActionSheet = false
                                print("make to call")
                            }),
                            .cancel(Text("Cancel"))
                        ])
                    }
                
                
                Spacer()
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            
            
            
            
            
        }
        
        
    }
}

struct ContactProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ContactProfileView(contact: Contact.mockData().first!, showModal: .constant(true))
    }
}



