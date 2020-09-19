//
//  ContactInfomation.swift
//  ConvertViewControllerToSwiftUI
//
//  Created by SuniMac on 2020/9/17.
//  Copyright © 2020 SunShine. All rights reserved.
//

import Foundation


struct ContactInfomation:Identifiable {
    var id = UUID()
    var name: String
    var address: String
    var phoneNumber: String
    var avatarImage: String? = nil
    
    init(name: String, address: String, phoneNumber: String, avatarImage: String? = nil) {
        
        self.name = name
        self.address = address
        self.phoneNumber = phoneNumber
        self.avatarImage = avatarImage
        
    }
    
    
    static func generateData() -> [ContactInfomation] {
        let jack = ContactInfomation(name: "Jack", address: "BeiJing", phoneNumber: "13666667777", avatarImage: "avatar_jack")
        let tom = ContactInfomation(name: "Tom", address: "ShangHai", phoneNumber: "13612345678", avatarImage: "avatar_tom")
        let lily = ContactInfomation(name: "Lily", address: "GuangZhou", phoneNumber: "13601012020", avatarImage: "avatar_lily")
        let simon = ContactInfomation(name: "Simon", address: "Beijing", phoneNumber: "13630309999", avatarImage: "avatar_simon")
        let chao = ContactInfomation(name: "Chao", address: "ChengDu", phoneNumber: "13678789898")
        let zipper = ContactInfomation(name: "Zipper", address: "TianJin", phoneNumber: "13699997777")
        let niji = ContactInfomation(name: "Niji", address: "HangZhou", phoneNumber: "13611155555")
        let ray = ContactInfomation(name: "Ray", address: "HangZhou", phoneNumber: "13687454216")
        let momo = ContactInfomation(name: "Momo", address: "ShenZhen", phoneNumber: "13667852233")
        let frank = ContactInfomation(name: "Frank", address: "SuZhou", phoneNumber: "13678941240")
        
        return [jack, tom, lily, simon, chao, zipper, niji, ray, momo, frank]
    }
    
    
}
