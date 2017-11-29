//
//  UIView+Extension.swift
//  KidEngage
//
//  Created by Ravishankar Dale on 19/06/16.
//  Copyright © 2016 CB. All rights reserved.
//

import UIKit

extension UIView {
    
    class func loadFromNibNamed(_ nibNamed: String, bundle : Bundle? = nil) -> Self? {
        return loadWithNib(nibNamed, bundle: bundle)
    }
    
    fileprivate class func loadWithNib<T>(_ nibNamed: String, bundle : Bundle? = nil) -> T? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiate(withOwner: nil, options: nil).first as? T
    }
    
}
