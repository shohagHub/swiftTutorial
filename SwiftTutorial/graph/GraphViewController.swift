//
//  GraphViewController.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 22/7/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {
    @IBOutlet weak var dotGraphView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dotGraphView(_ sender: UIButton) {
        let dotGraph = DotGraphView.init(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 50))
        self.dotGraphView.addSubview(dotGraph)
    }
    
   

}
