//
//  Stage.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 2/22/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import Foundation
import UIKit

struct Stage {
    
    private(set) public var title: String
    private(set) public var tagline: String
    //private(set) public var tools: [Tool]
    //Private(set) public var steps: [Step]
    private(set) public var prose: Prose
    private(set) public var bgColor: UIColor
    private(set) public var highlightColor: UIColor
    
    init(title: String, tagline: String, prose: Prose, bgColor: UIColor, highlightColor: UIColor) {
        self.title = title
        self.tagline = tagline
        //self.tools = tools
        //self.steps = steps
        self.prose = prose
        self.bgColor = bgColor
        self.highlightColor = highlightColor
    }
}
