//
//  Detail.swift
//  ForGeorge
//
//  Created by Phillip Mills on 2020-09-15.
//  Copyright © 2020 Phillip Mills. All rights reserved.
//

import Foundation

// I can't bring myself to call something a "DetailView" when it isn't a view.  :)
 struct Detail {
    var detailTitle : String
    
    //var equipmentImage = [UIImageView?]()
    var serN : String
    var dc : String //deck Code
    var an : String  //area name
    var sn : String   //Space number
    var manuf : String
    var qty : String
    
    init(detailTitle:String,dc:String,serN:String,an:String,sn:String,manuf:String,qty:String){
        self.detailTitle = detailTitle
        self.dc = dc
        self.an = an
        self.serN = serN
        self.sn = sn
        self.manuf = manuf
        self.qty = qty
//
    }
}
