//
//  RatingControl.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 27/11/17.
//  Copyright © 2017 Nazia Afroz. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {

    //MARK: properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtont()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtont()
        }
    }
    
    
    //MARK: initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtont()
    }

    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtont()
    }
    
    //MARK: private methods
    private func setupButtont() {
        
        // clear any existing buttons
        
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        for _ in 0..<starCount {
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.height).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.width).isActive = true
            
            button.addTarget(self, action: #selector(RatingControl.rattingButtonTapped(button:)), for: .touchUpInside)
            //        button.addTarget(self, action: #selector(RatingControl.rattingButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
    }
    
    //MARK: Action
    @objc func rattingButtonTapped(button: UIButton) {
        print("button pressed 👍")
    }
    
}
