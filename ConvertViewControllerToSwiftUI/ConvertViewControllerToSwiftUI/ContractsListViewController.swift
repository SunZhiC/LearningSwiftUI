//
//  ContractsListViewController.swift
//  ConvertViewControllerToSwiftUI
//
//  Created by SuniMac on 2020/9/17.
//  Copyright © 2020 SunShine. All rights reserved.
//

import UIKit
import SwiftUI

class ContactsListViewController: UITableViewController {
    
    
    var contacts: [ContactInfomation] = []
    override func viewDidLoad() {
        loadData()
        tableView.register(UINib(nibName: "ContactCell", bundle: Bundle.main), forCellReuseIdentifier: "ContactCell")
        
    }
    
    func loadData() {
        contacts = ContactInfomation.generateData()
    }
    
    
    
    
    
}

extension ContactsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as! ContactCell
        let contact = contacts[indexPath.row]
        
        cell.nameLabel.text = contact.name
        cell.addressLabel.text = contact.address
        cell.phoneNumberLabel.text = contact.phoneNumber
        
        return cell
    }
}




struct ContactsListRepresentation: UIViewControllerRepresentable {
    
    
    func makeUIViewController(context: Context) -> ContactsListViewController {
        ContactsListViewController()
    }
    
    func updateUIViewController(_ tableViewController: ContactsListViewController, context: Context) {

    }
}

struct ContractsListViewControllerPreviews: PreviewProvider {
    static var previews: some View {
        ContactsListRepresentation()
    }
}


