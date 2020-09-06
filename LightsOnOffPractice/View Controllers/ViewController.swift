//  ViewController.swift
//  LightsOnOffPractice
//
//  Created by Urmil Shah on 9/6/20.
//  Copyright © 2020 Spark28 Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   ///MARK: Outlets
    
    @IBOutlet weak var lightLabel: UILabel!
    
    @IBOutlet weak var ToggleButton: UIButton!
    ///MARK: - Properties
    
      var onOff = false
    
     ///MARK: -  ViewLifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(onOff)
        
    }
    
    ///MARK: - Actions

    @IBAction func stateChangeButton(_ sender: UIButton) {
        
        onOff = !onOff
        print("the state of the light switch is \(onOff)")
        
        if onOff {
            lightLabel.text = "Lights ON"
            view.backgroundColor = .white
            lightLabel.textColor = .black
            ToggleButton.setTitle("OFF", for:.normal)
            
        } else {
            lightLabel.text = "Lights OFF"
            view.backgroundColor = .black
            lightLabel.textColor = .white
            ToggleButton.setTitle("ON", for: .normal)
        }
        
    }
    
}
