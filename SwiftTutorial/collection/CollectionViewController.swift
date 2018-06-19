//
//  CollectionViewController.swift
//  SwiftTutorial
//
//  Created by Nazia Afroz on 19/6/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    let cellIdentifier = "CELL"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Collection View"
//        collectionView.delegate = self
//        collectionView.dataSource = self
//       
        

        registerCell()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
//        let label = UILabel(frame: CGRect(x:100, y: 30, width: UIScreen.main.bounds.width , height: 40))
//        label.textAlignment = .left
//        label.lineBreakMode = .byWordWrapping
//        label.numberOfLines = 0
//        label.text = "cell \(indexPath.row)"
//        cell.addSubview(label)
        let cell: CustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! CustomCollectionViewCell
        cell.label.text = "\(indexPath.row)"
        return cell
    }
    
    func registerCell(){
//        let
//        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellIdentifier)
        collectionView.register(UINib.init(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        
    }

}
