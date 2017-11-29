//
//  GradientView.swift
//  TabBar
//
//  Created by CODEBEES DEV2 on 27/11/17.
//  Copyright © 2017 CODEBEES DEV2. All rights reserved.
//

import UIKit

class GradientView: UIImageView {
    
    override open class var layerClass: AnyClass {
        get{
            return CAGradientLayer.classForCoder()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = self.layer as! CAGradientLayer
        let color1 = UIColor.white.withAlphaComponent(0.1).cgColor as CGColor
        let color2 = UIColor.white.withAlphaComponent(0.1).cgColor as CGColor
        gradientLayer.locations = [0.60, 1.0]
        gradientLayer.colors = [color2, color1]
    }
}
