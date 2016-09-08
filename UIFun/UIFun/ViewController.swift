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

    @IBOutlet weak var bucket: UIImageView!
    

    @IBOutlet weak var firstSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var secondSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bucket.paintColorName = "red"
    }
    
    func mixColors(withFirst first: String, second: String) -> String {
        switch (first, second) {
        case ("Red", "Red"):
            bucket.paintColorName = "red"
            return "Red"
        case ("Red", "Yellow"):
            bucket.paintColorName = "orange"
            return "Orange"
        case ("Red", "Blue"):
            bucket.paintColorName = "purple"
            return "Purple"
        case ("Yellow", "Red"):
            bucket.paintColorName = "orange"
            return "orange"
        case ("Yellow", "Yellow"):
            bucket.paintColorName = "yellow"
            return "Yellow"
        case ("Yellow", "Blue"):
            bucket.paintColorName = "green"
            return "Green"
        case ("Blue", "Red"):
            bucket.paintColorName = "purple"
            return "Purple"
        case ("Blue", "Yellow"):
            bucket.paintColorName = "green"
            return "Green"
        case ("Blue", "Blue"):
            bucket.paintColorName = "blue"
            return "Blue"
        default:
            return "what?"
            
        }
        }
       
    

    @IBAction func colorSelected(sender: UISegmentedControl) {
        if firstSegmentedControl.selectedSegmentIndex == 0 {
            switch secondSegmentedControl.selectedSegmentIndex {
            case 0:
                print("Red")
                bucket.paintColorName = "red"
            case 1:
                print("Orange")
                bucket.paintColorName = "orange"
            case 2:
                print("Purple")
                bucket.paintColorName = "purple"
            default:
                print("What?")
      
            } }
            else if firstSegmentedControl.selectedSegmentIndex == 1 {
                switch secondSegmentedControl.selectedSegmentIndex {
                case 0:
                    print("Orange")
                    bucket.paintColorName = "orange"
                case 1:
                    print("Yellow")
                    bucket.paintColorName = "yellow"
                case 2:
                    print("Green")
                    bucket.paintColorName = "green"
                default:
                    print("What?")
            } }
            else if firstSegmentedControl.selectedSegmentIndex == 2 {
                    switch secondSegmentedControl.selectedSegmentIndex {
                    case 0:
                        print("Purple")
                        bucket.paintColorName = "purple"
                    case 1:
                        print("Green")
                        bucket.paintColorName = "green"
                    case 2:
                        print("Blue")
                        bucket.paintColorName = "blue"
                    default:
                        print("What?")
                    }
                }
            }
        }



