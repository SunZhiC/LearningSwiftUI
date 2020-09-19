//
//  ViewController.swift
//  ConvertViewControllerToSwiftUI
//
//  Created by SuniMac on 2020/9/17.
//  Copyright © 2020 SunShine. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let contact = ContactInfomation.generateData().first!
        let profileView = ProfileView(contact: contact)
        let profileViewController = UIHostingController(rootView: profileView)
        
        profileViewController.view.frame = view.bounds
        addChild(profileViewController)
        profileViewController.didMove(toParent: self)
        view.addSubview(profileViewController.view)


        
    }

}

