//
//  ViewController.swift
//  sectionTableViews
//
//  Created by C4Q on 8/8/19.
//  Copyright © 2019 Iram Fattah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    
    @IBOutlet weak var tableView: UITableView!
    
    let landAnimals = ["Tiger", "Piglet", "Kangaroo", "Kitty", "Squirrel", "Bear"]
    
    let seaAnimals = ["Fish", "Dolphin", "Octopus", "Jellyfish", "Baby Shark", "Crab"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0 :
            return landAnimals.count
        case 1:
           return seaAnimals.count
        default:
            print("IDK")
            return -1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = landAnimals[indexPath.row]
        } else {
            cell.textLabel?.text = seaAnimals[indexPath.row]
        }
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Land Animals"
        case 1:
            return "Sea Animals"
        default:
            return "IDK"
        }
    }
    
    
    
    
    


}

