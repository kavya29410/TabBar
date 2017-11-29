//
//  Activities.swift
//  TabBar
//
//  Created by CODEBEES DEV2 on 17/10/17.
//  Copyright © 2017 CODEBEES DEV2. All rights reserved.
//

import UIKit

class Activities: UIView {

    @IBOutlet var img: UIImageView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    static func viewFromNib() -> Activities {
        guard let viewFromNib = Activities.loadFromNibNamed("Activities") else {
            assert(false, "")
            return Activities()
        }
        
        return viewFromNib
    }
    override func awakeFromNib()
        
    {
        
        //        Bundle.main.loadNibNamed("EventsList", owner: self, options: nil)
        // self.addSubview(custView)
        
    }

}
