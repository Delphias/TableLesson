//
//  ViewController.swift
//  TableLesson
//
//  Created by DA MAC M1 153 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var cars = ["Rolls Royce","Ford Mustang","Beetle","Toyota CH-R"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        
    }


}

// ViewController that needs to conform to the data source
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        cell.textLabel?.text = "My favourite car is \(indexPath.row): " + cars[indexPath.row]
        return cell
    }
    
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath) {
        print("The best car is: \(indexPath.row)")
    }
}
