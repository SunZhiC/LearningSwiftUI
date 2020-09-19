//
//  ContactCell.swift
//  ConvertViewControllerToSwiftUI
//
//  Created by SuniMac on 2020/9/17.
//  Copyright © 2020 SunShine. All rights reserved.
//

import UIKit
import SwiftUI

class ContactCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var phoneNumberLabel: UILabel!
    
    @IBOutlet var addressLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}


struct ContactCellRepresentable: UIViewRepresentable {
    @Binding var phoneNumber: Int
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $phoneNumber)
    }
    
    func makeUIView(context: Context) -> ContactCell {
        
        let cell = Bundle.main.loadNibNamed("ContactCell", owner: self, options: nil)?.first as! ContactCell
        cell.phoneNumberLabel.text = "\(phoneNumber)"
        return cell
    }
    
    
    func updateUIView(_ uiView: ContactCell, context: Context) {
        uiView.phoneNumberLabel.text = "\(self.phoneNumber)"
    }
       
    class Coordinator: NSObject  {
        var value: Binding<Int>
        init(value: Binding<Int>) {
            self.value = value
        }
    }
    
    
}
struct ContactCellPreviews: PreviewProvider {
    static var previews: some View {
        ContactCellRepresentable(phoneNumber: .constant(20))
    }
}
