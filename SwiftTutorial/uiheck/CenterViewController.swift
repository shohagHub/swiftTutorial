//
//  CenterViewController.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 6/6/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class CenterViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerViewWidth: NSLayoutConstraint!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Center"
        // Do any additional setup after loading the view.
        initialize()
    }

    func initialize(){
        label.text = "hi what are you doing its too good"
        containerViewWidth.constant = label.intrinsicContentSize.width + 5 + imageWidthConstraint.constant
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
