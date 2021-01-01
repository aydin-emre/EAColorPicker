//
//  ViewController.swift
//  EAColorPicker
//
//  Created by aydin-emre on 01/01/2021.
//  Copyright (c) 2021 aydin-emre. All rights reserved.
//

import UIKit
import EAColorPicker

class ViewController: UIViewController {

    @IBOutlet var colorPicker: EAColorPicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set initial color
        colorPicker.setViewColor(UIColor(red: 2/255.0, green: 119/255.0, blue: 189/255.0, alpha: 1))
        
        // Color selected listener
        colorPicker.onColorSelected = { color in
            print(color)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

