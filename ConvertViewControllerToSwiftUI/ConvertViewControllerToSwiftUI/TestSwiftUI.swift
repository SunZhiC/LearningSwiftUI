//
//  TestSwiftUI.swift
//  ConvertViewControllerToSwiftUI
//
//  Created by SuniMac on 2020/9/17.
//  Copyright © 2020 SunShine. All rights reserved.
//

import SwiftUI

struct TestControllerConvertToSwiftUI: View {
    var body: some View {
        ContactsListRepresentation()
    }
}

struct TestSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        TestControllerConvertToSwiftUI()
    }
}



struct TestUIViewConvertToSwiftUI: View {
    var body: some View {
        ContactCellRepresentable(phoneNumber: .constant(20))
    }
}


struct TestUIViewConvertToSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        TestUIViewConvertToSwiftUI()
    }
}

struct TestSwiftUIVIewConvertToUIView: View {
    var contact: ContactInfomation = ContactInfomation.generateData().first!
    var body: some View {
        ProfileView(contact: contact)
    }
}

struct TestSwiftUIVIewConvertToUIView_Previews: PreviewProvider {
    static var previews: some View {
        TestSwiftUIVIewConvertToUIView(contact: ContactInfomation.generateData().first!)
    }
}

