//
//  DotGraphView.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 22/7/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class DotGraphView: UIView {

    var dotColor: UIColor = UIColor.gray
    var bigDotSize: CGFloat = 4.0
    var smallDotSize: CGFloat = 3.0
    var spaceFromBothSide: CGFloat = 34
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let dotView = UIView.init(frame: CGRect(x: 50, y: 0, width: 10, height: 30))
        dotView.backgroundColor = UIColor.red
        dotView.layer.cornerRadius = dotView.frame.size.width / 2
        self.addSubview(dotView)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func createDotview(frame: CGRect)->UIView{
        let dotView = UIView.init(frame: frame)
        dotView.backgroundColor = dotColor
        dotView.layer.cornerRadius = dotView.frame.size.width / 2
        return dotView
    }
    
    func addDotGraph(){
        
        for index in stride(from: 0, to: 10, by: 2){//            print(index)
            
            
        }
    }
    func buildDotChart(){
        var xPosition = spaceFromBothSide
        var totalCircleSize = self.frame.size.width - (2 * spaceFromBothSide)
        var totalcircleCont = 60
        
        
    }

}
