//
//  ViewController.swift
//  ForGeorge
//
//  Created by Phillip Mills on 2020-09-15.
//  Copyright © 2020 Phillip Mills. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    let thirdArray = [[
    Detail(detailTitle: "A", dc: "", serN: "Info required", an: "Area Name required", sn: "Space Number Required", manuf: "APC", qty: "2")],
    
    [Detail(detailTitle: "B", dc: "", serN: "Info required", an: "Area Name required", sn: "Space Number Required", manuf: "Apple", qty: "12"),
    Detail(detailTitle: "D", dc: "", serN: "Info required", an: "Area Name required", sn: "Space Number Required", manuf: "Apple", qty: "7"),
    Detail(detailTitle: "E", dc: "", serN: "Info required", an: "Area Name required", sn: "Space Number Required", manuf: "Apple", qty: "1")],
    
    
    [Detail(detailTitle: "F", dc: "", serN: "Info required", an: "Area Name required", sn: "Space Number Required", manuf: "Autonomic", qty: "1")]]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thirdArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCellType", for: indexPath)
        let row = indexPath.row
        let array = thirdArray[row]
        cell.textLabel?.text = "Item: \(row), content: \(array.count)"
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let row = self.tableView?.indexPathForSelectedRow?.row else {
            print("Error: problem with first table view or selection")
            return
        }
        guard let dest = segue.destination as? SecondTableViewController else {
            print("Error: couldn't find expected SecondTableViewController")
            return
        }
        dest.detailVcArray = thirdArray[row]
    }

}

