//
//  User.swift
//  PropertyWrappers
//
//  Created by SuniMac on 2020/9/19.
//

import Combine

final class User: ObservableObject {
    var name: String = ""
    var age: Int = 0
    @Published var score: Int = 0
    init(name: String, age: Int, score: Int) {
        self.name = name
        self.age = age
        self.score = score
    }
    
    init() {
    }
}
