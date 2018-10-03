//
//  MainViewController.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 11/11/17.
//  Copyright © 2017 Nazia Afroz. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    
    
    @IBAction func goTutorialsView(_ sender: Any) {
        let viewController = TutorialViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func goFoodTracker(_ sender: Any) {
        let viewController = FoodViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    /*
     //MARK:: Test Code
     let arraySort = SortArray()
     arraySort.sortArray()
     let genericBehave = GenericBehave.init()
     genericBehave.genericTest()
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func initialization(_ sender: UIButton) {
        print("initialization")
        
        var _ = Fahrenheit()
        let boilingPointOfWater: Celcius = Celcius(fromFarenheit: 212.0)
        print(boilingPointOfWater)
        let freezingPointOfWater: Celcius = Celcius(fromKelvin: 273.15)
        print(freezingPointOfWater)
        var size = Size2()
        print(size.width + size.height)
        var size2 = Size2(width: 100, height: 200)
//        let defaultBehaviour = Celcius()
        
        let namedMeat = Food(name: "Bacon")
        print("namedMeat's name is \(namedMeat.name)")
        let mysteryMeat = Food()
        print("mysteryMeats's name is \(mysteryMeat.name)")
        
        let oneMysteryItem = RecipeIngredient()
        print("")
    }
    @IBAction func goToTime(_ sender: Any) {
        let time = Time()
        time.printTime()
    }
    
    @IBAction func gotoInheritence(_ sender: UIButton) {
        testInheritence()
    }
    
    @IBAction func goToModalTest(_ sender: UIButton) {
        print("Modal view controller");
        let modalViewController = ModalViewController.init(nibName: "ModalViewController", bundle: nil)
//        ModalViewController.
        modalViewController.modalPresentationStyle = .pageSheet
//        self.navigationController?.pushViewController(modalViewController, animated: true)
        self.navigationController?.present(modalViewController, animated: true, completion: nil)
    }
    @IBAction func goToLayer(_ sender: UIButton) {
        let layerViewController = LayerViewController()
        self.navigationController?.pushViewController(layerViewController, animated: true)
    }
    @IBAction func sharedPreference(_ sender: UIButton) {
        print("sharedPreference");
        writeToSharedPref()
        readValueFromSharedPref()
    }
    
    @IBAction func gotoUIHeck(_ sender: UIButton) {
        print("gotoUIHeck")
        let centerViewController = CenterViewController.init(nibName: "CenterViewController", bundle: nil)
        self.navigationController?.pushViewController(centerViewController, animated: true)
    }
    
    
    @IBAction func goToCollectionView(_ sender: UIButton) {
        print("goToCollectionView")
        let collectionView = CollectionViewController.init(nibName: "CollectionViewController", bundle: nil)
        self.navigationController?.pushViewController(collectionView, animated: true)
    }
    @IBAction func shareVia(_ sender: UIButton) {
        let shareViaViewController = ShareViaViewController.init(nibName: "ShareViaViewController", bundle: nil)
        self.navigationController?.pushViewController(shareViaViewController, animated: true)
    }
    
    @IBAction func callGraphView(_ sender: UIButton) {
        if sender.tag == 1{
            let graphViewController = GraphViewController.init(nibName: "GraphViewController", bundle: nil)
            self.navigationController?.pushViewController(graphViewController, animated: true)
        }
        else if sender.tag == 2{
            let date: DateTime = DateTime()
            date.runDateTime()
        }
        
    }
    
    
}
