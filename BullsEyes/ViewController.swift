//
//  ViewController.swift
//  BullsEyes
//
//  Created by sgcs on 2019. 4. 5..
//  Copyright © 2019년 KyungKoo Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello, World", message: "This is my first app!",
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

}

