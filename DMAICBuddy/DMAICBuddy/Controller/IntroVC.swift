//
//  IntroVC.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 1/23/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import UIKit

class IntroVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func defineTapped(_ sender: Any) {
        print("define tapped")
        performSegue(withIdentifier: "toDefineVC", sender: nil)
    }
    
    @IBAction func measureTapped(_ sender: Any) {
        print("measure tapped")
        performSegue(withIdentifier: "toMeasureVC", sender: nil)
    }
    
    
    
}
