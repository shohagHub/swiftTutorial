//
//  CustomCollectionViewCell.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 19/6/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
