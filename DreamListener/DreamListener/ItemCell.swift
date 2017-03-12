//
//  ItemCell.swift
//  DreamListener
//
//  Created by Abhishek Sisodia on 2017-03-11.
//  Copyright © 2017 Abhishek Sisodia. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var desc: UILabel!

    func configureCell(item: Item) {
        
        title.text = item.title
        price.text = "$\(item.price)"
        desc.text = item.details
    }
    
}
