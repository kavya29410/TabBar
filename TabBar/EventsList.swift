//
//  EventsList.swift
//  TabBar
//
//  Created by CODEBEES DEV2 on 17/10/17.
//  Copyright © 2017 CODEBEES DEV2. All rights reserved.
//

import UIKit
import Cosmos


class EventsList: UIView {

    @IBOutlet var imgV: UIImageView!
    @IBOutlet var custView: UIView!
    @IBOutlet var rating: CosmosView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
   
    static func viewFromNib() -> EventsList {
        guard let viewFromNib = EventsList.loadFromNibNamed("EventsList") else {
            assert(false, "")
            return EventsList()
        }

        return viewFromNib
    }
    override func awakeFromNib()
        
    {
        
        
//        Bundle.main.loadNibNamed("EventsList", owner: self, options: nil)
// self.addSubview(custView)
        
    }
}
