//
//  ViewController.swift
//  Gestures
//
//  Created by Murali on 4/10/19.
//  Copyright © 2019 Murali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var swipeUPGR:UISwipeGestureRecognizer!
    
    @IBOutlet var lblText: UILabel!
    @IBOutlet var viewRotate: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUI()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func createUI()
    {
        swipeUPGR = UISwipeGestureRecognizer(target: self, action: #selector(onSwipeUP))
        swipeUPGR.direction = .up
        swipeUPGR.numberOfTouchesRequired = 1
        viewRotate.addGestureRecognizer(swipeUPGR)
    }
    
    @objc func onSwipeUP()
    {
        lblText.text = "Swipe UP"
    }

}

