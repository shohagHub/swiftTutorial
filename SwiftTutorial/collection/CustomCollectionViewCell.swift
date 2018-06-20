//
//  CustomCollectionViewCell.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 19/6/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

//Circular cell
class CustomCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var mainViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        mainView.backgroundColor = UIColor.green
        mainView.layer.cornerRadius = mainViewHeightConstraint.constant / 2

    }

}
