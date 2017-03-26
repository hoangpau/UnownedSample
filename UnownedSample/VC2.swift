//
//  ViewController.swift
//  UnownedSample
//
//  Created by Trương Thắng on 3/26/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class VC2: UIViewController {
    
    unowned var dataSource = DataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.shared.tableViewController.tableView.dataSource = dataSource
        AppDelegate.shared.tableViewController.tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Navigation
    

}

class DataSource: NSObject, UITableViewDataSource {
    
    var data = Array (0 ... 100)
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(data[indexPath.row])"
        return cell
    }
}
