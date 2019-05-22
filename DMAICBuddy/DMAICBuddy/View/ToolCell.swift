//
//  ToolCell.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 2/21/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import UIKit

class ToolCell: UICollectionViewCell {
    
    
    @IBOutlet weak var toolImage: UIImageView!
    @IBOutlet weak var toolTitle: UILabel!
    
    func updateViews(tool: Tool) {
        toolImage.image = UIImage(named: tool.imageName)
        toolTitle.text = tool.title
    }
    
    
}
