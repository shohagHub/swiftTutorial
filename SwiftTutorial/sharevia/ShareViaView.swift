//
//  ShareViaView.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 10/7/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class ShareViaView: UIView {
    
    @IBOutlet var view: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Bundle.main.loadNibNamed("ShareViaView", owner: self, options: nil)
        self.addSubview(self.view)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Bundle.main.loadNibNamed("ShareViaView", owner: self, options: nil)
        self.addSubview(self.view)
    }

}
