//
//  TutorialViewController.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 11/4/17.
//  Copyright © 2017 Nazia Afroz. All rights reserved.
//

import UIKit




//tutorial
class DataImporter {
    var fileName = "data.txt"
    //the data importer class would provide data importing
    //functionality here
    
}
class DataManager {
//    lazy var
    lazy var importer = DataImporter()
    var data = [String]()
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
class TutorialViewController: UIViewController {

    @IBOutlet weak var contentViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet var tapGestureRecogniser: UITapGestureRecognizer!
    
    //Mark: constraints
    @IBAction func goToUitableView(_ sender: Any) {
        
    }
    
    
    public func setTestGet() {
        var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
        let initialSquareCenter = square.center
        square.center = Point(x: 15.0, y: 15.0)
        print("square.origin is now at (\(square.origin.x), \(square.origin.y)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tutorial View Controller"
        // Do any additional setup after loading the view.
        let firstFile = FirstFile()
        firstFile.doSomeTask()
        setScrollView();
    }
    func setScrollView() {
        contentViewHeight.constant = 2000
    
        
        //CGFloat top, left, bottom, right;
        print("yup")
        scrollView.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: -400, right: 0.0)
        scrollView.contentOffset = CGPoint(x: 0.0, y: 99)
        
    }

    //MARK:: Action
    @IBAction func testProperty(_ sender: Any) {
        self.navigationController?.pushViewController(UiTableViewTestViewController(), animated: true)
    }
   
    //MARK:: function
    @IBAction func functions(_ sender: UIButton) {
        print(greet(person: "shohag"))
        print("hello")
        print(greet(person: "Shohag", from: "Seoul"))
        arithmeticMean(1,2,3,4,5,6)
        usingFunctionTypes()
        
    }
    
    @IBAction func closure(_ sender: Any) {
        print("Closure")
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        var revarseNames = names.sorted(by: {(_ s1: String, _ s2: String) -> Bool in
            s1 > s2
        })
        print(revarseNames)
        
    }
    public func testProperty() {
        let manager = DataManager()
        manager.data.append("Some Data")
        manager.data.append("Some more Data")
        print(manager.importer.fileName);
    }
    @IBAction func coreBluetoothAction(_ sender: UIButton) {
        
    }
    
    

}
