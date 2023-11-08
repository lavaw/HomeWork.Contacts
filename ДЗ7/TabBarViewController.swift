//
//  TabBarViewController.swift
//  ДЗ7
//
//  Created by Rudolf Amiryan on 07.11.23.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getContactList()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers(with: persons)
       
        
    }

    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! ContactsTableViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }

}
