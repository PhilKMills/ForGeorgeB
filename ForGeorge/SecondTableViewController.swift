//
//  SecondTableViewController.swift
//  ForGeorge
//
//  Created by Phillip Mills on 2020-09-15.
//  Copyright © 2020 Phillip Mills. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {

    var detailVcArray : [Detail]?

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let details = detailVcArray {
            return details.count
        } else {
            print("Error: data not set for SecondTableViewController")
        }
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCellType", for: indexPath)
        if let details = detailVcArray {
            let detail = details[indexPath.row]
            cell.textLabel?.text = "Title: \(detail.detailTitle)"
        } else {
            cell.textLabel?.text = "Error: data not set"    // Should never get here, but....
        }
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let row = self.tableView?.indexPathForSelectedRow?.row else {
            print("Error: problem with second table view or selection")
            return
        }
        guard let dest = segue.destination as? DetailsViewController else {
            print("Error: couldn't find expected DetailsViewController")
            return
        }
        guard let details = detailVcArray else {
            print("Error: data not set for SecondTableViewController")
            return
        }
        dest.detail = details[row]
    }

}
