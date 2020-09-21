//
//  NavigationLazyView.swift
//  Navigation
//
//  Created by SuniMac on 2020/9/21.
//

import SwiftUI

struct NavigationLazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}
