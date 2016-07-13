//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit






class ViewController: UIViewController {
    // TODO: Set up IB outlets

    @IBOutlet weak var paintBucket: UIView!
    
    @IBOutlet weak var firstSegmented: UISegmentedControl!
    
    @IBOutlet weak var secondSegmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintBucket.paintColorName = "red"
    }
    
    func mixColors(withFirst first: String, second: String) -> String {
        // This was pretty straightforward however it wasn't working for me at first because I had a capitalized the segmented controls when defining their title but was checking it all lowercase.
        
        var mixColor: String = ""
        
        if first == "Red" && second == "Blue" {
            mixColor = "purple"
        } else if first == "Blue" && second == "Red" {
            mixColor = "purple"
        } else if first == "Red" && second == "Red" {
            mixColor = "red"
        } else if first == "Red" && second == "Yellow" {
            mixColor = "orange"
        } else if first == "Yellow" && second == "Red" {
            mixColor = "orange"
        } else if first == "Yellow" && second == "Yellow" {
            mixColor = "yellow"
        } else if first == "Yellow" && second == "Blue" {
            mixColor = "green"
        } else if first == "Blue" && second == "Yellow" {
            mixColor = "green"
        } else if first == "Blue" && second == "Blue" {
            mixColor = "blue"
        }
        
        return mixColor
    }
    
    @IBAction func colorSelected(sender: UISegmentedControl) {
     
        let mixColor = mixColors(withFirst: firstSegmented.color.name, second: secondSegmented.color.name)
        paintBucket.paintColorName = mixColor
        
    }
}