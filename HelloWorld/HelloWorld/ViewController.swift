//
//  ViewController.swift
//  HelloWorld
//
//  Created by Cun Mu on 1/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("I am inside viewDidLoad() Function")
    }

    @IBAction func PressMeAction(_ sender: UIButton) {
        print("Button was pressed")
        lblExample.text = "Button was pressed"
    }
}

