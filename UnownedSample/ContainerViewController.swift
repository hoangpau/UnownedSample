//
//  ContainerViewController.swift
//  UnownedSample
//
//  Created by Trương Thắng on 3/26/17.
//  Copyright © 2017 Trương Thắng. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier ?? "" {
        case "Embed Table View Controller":
            AppDelegate.shared.tableViewController = segue.destination as? TableViewController
        default:
            return
        }
    }
}
