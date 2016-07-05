//
//  PushButtonView.swift
//  Flo
//
//  Created by Andre Morais on 7/4/16.
//  Copyright © 2016 Andre Morais. All rights reserved.
//

import UIKit

class PushButtonView: UIButton {

    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(ovalInRect: rect)
        UIColor.greenColor().setFill()
        path.fill()
    }

}
