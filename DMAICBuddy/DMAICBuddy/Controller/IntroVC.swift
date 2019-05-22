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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.destination is DefineVC
        {
            let vc = segue.destination as? DefineVC
            switch segue.identifier {
            case "DefineVC":
                vc?.stageName = "DEFINE"
            case "MeasureVC":
                vc?.stageName = "MEASURE"
            case "AnalyzeVC":
                vc?.stageName = "ANALYZE"
            case "ImproveVC":
                vc?.stageName = "IMPROVE"
            case "ControlVC":
                vc?.stageName = "CONTROL"
            default:
                vc?.stageName = "DEFINE"
            }
            
            
        }

    }
    
}
