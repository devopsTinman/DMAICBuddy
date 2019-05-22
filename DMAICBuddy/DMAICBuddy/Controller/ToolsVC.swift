//
//  ToolsVC.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 2/23/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import UIKit

class ToolsVC: UIViewController {

    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var toolDescriptionTxt: UITextView!
    @IBOutlet weak var headerLbl: HeaderLabel!
    var stageName: String = ""
    var toolName: String = ""
    var toolProse: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let stage = DataService.instance.getStage(forStage: stageName)

        headerLbl.text = toolName
        bgView.backgroundColor = stage.bgColor
        navigationItem.title = stage.title
        
        let data = Data(toolProse.utf8)
        
        if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
            toolDescriptionTxt.attributedText = attributedString
        }
        
    }
    

}
