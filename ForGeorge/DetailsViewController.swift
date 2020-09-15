//
//  DetailsViewController.swift
//  ForGeorge
//
//  Created by Phillip Mills on 2020-09-15.
//  Copyright © 2020 Phillip Mills. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var detailDisplay: UITextView!
    var detail : Detail?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let detail = detail {
            detailDisplay.text = "\(detail)"
        } else {
            print("Error: data not set for DetailsViewController")
            detailDisplay.text = "Error: data not set"
        }
    }
    
}
