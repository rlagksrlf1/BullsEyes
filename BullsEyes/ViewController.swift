//
//  ViewController.swift
//  BullsEyes
//
//  Created by sgcs on 2019. 4. 5..
//  Copyright © 2019년 KyungKoo Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showAlert(){
        let message = "The value of the slider is: (currentValue)"
        let alert = UIAlertController(title: "Hello, World", message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        currentValue = lroundf(slider.value)
        print(" The value of the slider is now:\(currentValue)")
    }

}

