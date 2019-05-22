//
//  DefineVC.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 1/23/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import UIKit

class DefineVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var toolsView: DetailBorderView!
    
    @IBOutlet weak var stepsView: DetailBorderView!
    
    @IBOutlet weak var bgView: UIView!
    
    
    @IBOutlet weak var stageNameLbl: HeaderLabel!
    
    @IBOutlet weak var stepsTable: UITableView!
    
    @IBOutlet weak var taglineLbl: UILabel!
    
    @IBOutlet weak var toolsCollection: UICollectionView!
    
    var stageName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toolsCollection.dataSource = self
        toolsCollection.delegate = self
        stepsTable.dataSource = self
        stepsTable.delegate = self
        let stage = DataService.instance.getStage(forStage: stageName)
        stageNameLbl.text = stage.title
        taglineLbl.text = stage.tagline
        //toolsView.backgroundColor = stage.highlightColor
        toolsView.backgroundColor = stage.highlightColor
        stepsView.backgroundColor = stage.highlightColor
        bgView.backgroundColor = stage.bgColor
        navigationItem.title = stage.title
    }

 
    @IBAction func btnClosePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getSteps(forStage: stageName).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "StepCell") as? StepCell {
            let step = DataService.instance.getSteps(forStage: stageName)[indexPath.row]
            cell.updateViews(step: step)
            return cell
        }
        else {
            return StepCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let tool = DataService.instance.getTools(forStage: stageName)[indexPath.row]
        performSegue(withIdentifier: "ShowTool", sender: tool)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getTools(forStage: stageName).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToolCell", for: indexPath) as? ToolCell {
            let tool = DataService.instance.getTools(forStage: stageName)[indexPath.row]
            cell.updateViews(tool: tool)
            return cell
        }
        return ToolCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.destination is ToolsVC
        {
            assert(sender as? Tool != nil)
            let tool = sender as? Tool
            let vc = segue.destination as? ToolsVC
            vc?.stageName = stageName
            vc?.toolName = (tool?.title)!
            vc?.toolProse = (tool?.prose)!
            
        }
        
    }

    
}
