//
//  ViewController.swift
//  RxSwiftExample
//
//  Created by Norbert Czirjak on 2017. 10. 24..
//  Copyright © 2017. Norbert Czirjak. All rights reserved.
//

import UIKit

var shownCities = [String]() // Data source for UITableView
let allCities = ["New York", "London", "Oslo", "Warsaw", "Berlin", "Praga"]

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shownCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityPrototypeCell", for: indexPath)
        cell.textLabel?.text = shownCities[indexPath.row]
        return cell
    }


}

