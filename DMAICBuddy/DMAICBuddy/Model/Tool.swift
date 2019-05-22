//
//  Tool.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 2/21/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import Foundation

struct Tool {
    
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var prose: String
    
    init(title: String, imageName: String, prose: String) {
        self.title = title
        self.imageName = imageName
        self.prose = prose
    }
    
    init() {
        self.title = ""
        self.imageName = ""
        self.prose = ""
    }
    
}
