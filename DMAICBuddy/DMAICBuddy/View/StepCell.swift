//
//  StepCell.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 2/22/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import UIKit

class StepCell: UITableViewCell {

    
    @IBOutlet weak var stepText: UILabel!
    
    func updateViews(step: Step) {
        
        stepText.text = step.line
    }

}
