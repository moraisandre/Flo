//
//  ViewController.swift
//  Flo
//
//  Created by Andre Morais on 7/3/16.
//  Copyright © 2016 Andre Morais. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Counter outlets
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var graphView: GraphView!
    
    var isGraphViewShowing = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        counterLabel.text = String(counterView.counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            counterView.counter += 1
        } else {
            if counterView.counter > 0 {
                counterView.counter -= 1
            }
        }
        counterLabel.text = String(counterView.counter)
    }
    
    @IBAction func counterViewTap(gesture:UITapGestureRecognizer?) {
        if (isGraphViewShowing) {
            
            //hide Graph
            UIView.transitionFromView(graphView,
                                      toView: counterView,
                                      duration: 1.0,
                                      options: UIViewAnimationOptions.TransitionFlipFromLeft
                                        | UIViewAnimationOptions.ShowHideTransitionViews,
                                      completion:nil)
        } else {
            
            //show Graph
            UIView.transitionFromView(counterView,
                                      toView: graphView,
                                      duration: 1.0,
                                      options: UIViewAnimationOptions.TransitionFlipFromRight
                                        | UIViewAnimationOptions.ShowHideTransitionViews,
                                      completion: nil)
        }
        isGraphViewShowing = !isGraphViewShowing
    }

}

