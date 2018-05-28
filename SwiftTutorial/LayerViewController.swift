//
//  LayerViewController.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 10/1/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class LayerViewController: UIViewController {
    @IBOutlet weak var viewForLayer: UIView!
    
    var layer: CALayer {
        return viewForLayer.layer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CALayer"
//        setUpLayer()
//        setUpLayer2()
        setupTextLayer()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpLayer() {
        layer.backgroundColor = UIColor.blue.cgColor
        layer.borderWidth = 100.0
        layer.borderColor = UIColor.red.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 10.0
        layer.contents = UIImage(named: "star")?.cgImage
        layer.contentsGravity = kCAGravityCenter
    }
    
    /*
     
     let layer = CALayer()
     layer.frame = someView.bounds
     
     layer.contents = UIImage(named: "star")?.cgImage
     layer.contentsGravity = kCAGravityCenter
     */
    func setUpLayer2() {
        let layer = CALayer()
        layer.frame = viewForLayer.bounds
        layer.contents = UIImage.init(named: "star")?.cgImage
        layer.contentsGravity = kCAGravityCenter
        
        
    }
    
    func setupTextLayer() {
        //1
        let textLayer = CATextLayer()
        textLayer.frame = viewForLayer.bounds
        let string = String.init(repeating: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor arcu quis velit congue dictum. ", count: 20)
        textLayer.string = string
        textLayer.font = CTFontCreateWithName("Helvetica" as CFString, 17, nil)
        
        textLayer.foregroundColor = UIColor.darkGray.cgColor
        textLayer.isWrapped = true
        textLayer.alignmentMode = kCAAlignmentLeft
        textLayer.contentsScale = UIScreen.main.scale
        viewForLayer.layer.addSublayer(textLayer)
        
    }

    @IBAction func tapGestureRecognized(_ sender: UITapGestureRecognizer) {
        layer.shadowOpacity = layer.shadowOpacity == 7.0 ? 0.0 : 7.0
    }
    
    @IBAction func pinchGestureRecognized(_ sender: UIPinchGestureRecognizer) {
        
    }
    
    
}
