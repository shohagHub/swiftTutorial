//
//  ShareViaViewController.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 10/7/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class ShareViaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var mShareView: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 336, height: 336))
    var shareView: ShareViaView?
    
    @IBAction func shareButtonClick(_ sender: UIButton) {
        shareView = ShareViaView.init(frame: CGRect(x: 0, y: 0, width: 336, height: 336))
        mShareView.addSubview(shareView!)
        var image: UIImage = takeSnapeShot()
        var sharingItems = [UIImage]()
        sharingItems.append(image)
        var activityController = UIActivityViewController.init(activityItems: sharingItems, applicationActivities: nil)
        DispatchQueue.main.async {
            self.present(activityController, animated: true, completion: nil)
        }
        
    }
    
    
    func takeSnapeShot() -> UIImage{
        let size = mShareView.frame.size
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        mShareView.drawHierarchy(in: CGRect(x: 0, y: 0, width: mShareView.frame.size.width, height: mShareView.frame.size.height), afterScreenUpdates: true)
        mShareView.layer.render(in: UIGraphicsGetCurrentContext()!)
        let imageForShare = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return imageForShare!
    }
    

}
