//
//  Prose.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 2/22/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import Foundation

struct Prose {
    
    private(set) public var paragraph: String
    private(set) public var imageName: String
    
    init(paragraph: String, imageName: String) {
        self.paragraph = paragraph
        self.imageName = imageName
    }
}
