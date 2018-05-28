//
//  Inheritence.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 7/1/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit


class CommonGraph {
    public var backgroundScrollView: UIScrollView
    public var xlabel: UILabel
    init() {
        print("\(String(describing: CommonGraph.self)) \(#function)")
        backgroundScrollView = UIScrollView.init()
        xlabel = UILabel.init()
    }
    init(label xlabel: UILabel) {
        print("\(String(describing: CommonGraph.self)) \(#function)")
        backgroundScrollView = UIScrollView.init()
        self.xlabel = xlabel
    }
    
    @discardableResult
    func createBackGroundScrollView() -> UIScrollView{
        let scrollView = UIScrollView.init(frame: CGRect(x: 0.0, y: 0.0, width: 10, height: 10))
        return scrollView
    }
}

class CareGraph: CommonGraph {
    public var isLineGraph: Bool
    override init() {
        
        print(String(describing: CareGraph.self) + "\(#function)")
        isLineGraph = true
        super.init()
    }
    
    public func useParentProperties() {
        self.backgroundScrollView.alwaysBounceHorizontal = true
    }
    
}

//MARK:: testing method
func testInheritence() -> Void{
    print("\(#function)")
    let careGraph = CareGraph.init()
    print("\(String(describing: type(of: careGraph)))")
    careGraph.createBackGroundScrollView()
}

class Inheritence: NSObject {

}
