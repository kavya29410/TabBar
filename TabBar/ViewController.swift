//
//  ViewController.swift
//  TabBar
//
//  Created by CODEBEES DEV2 on 16/10/17.
//  Copyright © 2017 CODEBEES DEV2. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate , UICollectionViewDataSource {

    @IBOutlet var customView: UIView!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var EventsView: UIView!
    var vc = EventsList.viewFromNib()
     var vc1 = Activities.viewFromNib()
    
    var tabNames : [String] = ["Home","Schools" , "Activities" , "Events" ,"Store" , "Blog", "Services"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images : [UIImage]  = [ UIImage.init(named: "Home")! , UIImage.init(named: "school")! ]
        // Do any additional setup after loading the view, typically from a nib.
        
        self.collectionView.register(UINib(nibName:"CollectionCell", bundle: nil),
                                     forCellWithReuseIdentifier:"CELL")
       
        let timer = Timer.scheduledTimer(withTimeInterval: 60, repeats: true) {
            (_) in
            print("Hello World")
            self.EventsView.addSubview(self.vc)
        }
         self.collectionView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let selectedIndex = IndexPath(item: 0, section: 0)
        self.collectionView.selectItem(at: selectedIndex , animated: true , scrollPosition: .top)
    }
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.tabNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath) as! CollectionCell
        cell.LabelName.text = self.tabNames[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath) as! CollectionCell
        print(cell.LabelName.text!)
        if indexPath.row == 1 {
            self.vc.frame = CGRect(x: self.customView.frame.origin.x, y: self.customView.frame.origin.y, width: self.customView.frame.width, height: self.customView.frame.height)
           self.EventsView.addSubview(self.vc)
        }
        else {
            self.vc1.frame = CGRect(x: self.customView.frame.origin.x, y: self.customView.frame.origin.y, width: self.customView.frame.width, height: self.customView.frame.height)
          self.EventsView.addSubview(vc1)
        }

    }
}

