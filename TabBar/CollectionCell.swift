//
//  CollectionCell.swift
//  TabBar
//
//  Created by CODEBEES DEV2 on 16/10/17.
//  Copyright © 2017 CODEBEES DEV2. All rights reserved.
//

import UIKit

class CollectionCell: UICollectionViewCell {
    
   
    @IBOutlet var LabelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    override var isHighlighted: Bool {
//        didSet {
//            tabName.textColor  =  isHighlighted ? UIColor.white : UIColor.black
//        }
//    }
//    override var isSelected: Bool  {
//        didSet {
//            tabName.textColor  =  isSelected ? UIColor.white : UIColor.black
//        }
//    }
}
