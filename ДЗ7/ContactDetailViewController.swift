//
//  ContactDetailViewController.swift
//  ДЗ7
//
//  Created by Rudolf Amiryan on 07.11.23.
//

import UIKit

class ContactDetailViewController: UIViewController {
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
    }
 
}
