//
//  ContactsTableViewController.swift
//  ДЗ7
//
//  Created by Rudolf Amiryan on 07.11.23.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    var persons: [Person] = []
    override func viewDidLoad() {
            super.viewDidLoad()
            
            // В этом месте загрузите данные в массив persons, например, из сети или локальной базы данных
            // Пример:
            //persons = loadPersons()
            
            // После загрузки данных вызовите reloadData для обновления таблицы
            tableView.reloadData()
        }
  

    // MARK: - Table view data source

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName

        return cell
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! ContactDetailViewController
            detailVC.person = persons[indexPath.row]
        }
    }
    

}
