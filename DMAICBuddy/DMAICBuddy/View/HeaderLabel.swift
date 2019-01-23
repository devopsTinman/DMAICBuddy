//
//  HeaderLabel.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 1/23/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import UIKit

@IBDesignable
class HeaderLabel: UILabel {

    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = 10
        self.layer.backgroundColor = UIColor.gray.cgColor
        self.clipsToBounds = true
    }

}
