//
//  DataService.swift
//  DMAICBuddy
//
//  Created by Allbee, Eamon on 2/21/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    
    static let instance = DataService()
    
    //private let stages = ["Define", "Measure", "Analyze", "Improve", "Control"]
    
    
    private let defineTools = [
        Tool(title: "Project Charter", imageName: "projectCharter.png", prose: projectCharterText),
        Tool(title: "SIPOC", imageName: "SIPOC.png", prose: SIPOCText),
        Tool(title: "Stakeholder Assessment", imageName: "stakeholder-assessment.png", prose: stakeholderAssessmentText),
        Tool(title: "Pareto & Process Map", imageName: "process-map.png", prose: paretoMapText),
        Tool(title: "VOC/VOB & CTQ’s", imageName: "voc.png", prose: vocVOBText)
    ]

    private let defineSteps = [
        Step(line: "Define and scope the problem"),
        Step(line: "Determine project objectives and benefits"),
        Step(line: "Create project charter")
    ]
    
    private let defineProse = Prose(paragraph: "there is a lot to say about the Define Stuff", imageName: "define.png")
    
    
    
    private let measureTools = [
        Tool(title: "Data Collection Sheets", imageName: "data-collection.png", prose: dataCollectionText),
        Tool(title: "Cause & Effect Diagram & Matrix", imageName: "causeEffect.png", prose: causeEffectText),
        Tool(title: "Measurement Systems Analysis", imageName: "measure.png", prose: measureAnalysisText),
        Tool(title: "Value Stream Mapping", imageName: "value-stream.png", prose: valueStreamText),
        Tool(title: "Process capability and sigma levels", imageName: "sigma-levels.png", prose: processCapabilityText)
    ]

    private let measureSteps = [
        Step(line: "Define the as is process"),
        Step(line: "Validate the measure system for the inputs"),
        Step(line: "Calculation and Baselining")
    ]
    
    private let measureProse = Prose(paragraph: "a lot of tesxt on measure", imageName: "mypic.png")
    
    private let controlTools = [
        Tool(title: "Control Charts", imageName: "control-charts.png", prose: controlChartsText),
        Tool(title: "Poka-yoke", imageName: "poka-yoke.png", prose: pokaYokeText),
        Tool(title: "Communication Plan", imageName: "communication-plan.png", prose: communicationPlanText),
        Tool(title: "Documentation", imageName: "documentation.png", prose: documentationText),]
    
    private let controlSteps = [
        Step(line: "Create control and monitoring plan"),
        Step(line: "Implement full scale solution"),
        Step(line: "Get a project closure signoff"),
        Step(line: "Hand over the project")
    ]
    
    private let controlProse = Prose(paragraph: "a lot of tesxt on measure", imageName: "mypic.png")

    private let improveProse = Prose(paragraph: "a lot of tesxt on measure", imageName: "mypic.png")

    private let analyzeTools = [
        Tool(title: "Why-Why & Other Analysis", imageName: "why-why.png", prose: whyWhyText),
        Tool(title: "FMEA", imageName: "FMEA.png", prose: fmeaText),
        Tool(title: "Graphical Analysis", imageName: "charts.png", prose: graphicalText),
        Tool(title: "Hypothesis Testing", imageName: "hypothesis.png", prose: hypothesisText),
        Tool(title: "Regression Analysis", imageName: "regression.png", prose: regressionText),]
    
    private let improveTools = [
        Tool(title: "Design of Experiments (DOE)", imageName: "doe.png", prose: doeText),
        Tool(title: "Solution Evaluation Tools", imageName: "solution-evaluation.png", prose: solutionEvaluationText)]
    
    private let analyzeSteps = [
        Step(line: "Identify the critical causes (x's)"),
        Step(line: "Analyze the significance of x's"),
        Step(line: "Focus on causes to achieve y = f(x)")
    ]
    
    private let improveSteps = [
        Step(line: "Generate the potential solutions"),
        Step(line: "Select and test solutions"),
        Step(line: "Develop pilot implementation"),
        Step(line: "Pland and conduct pilot studies")
    ]
    private let analyzeProse = Prose(paragraph: "a lot of tesxt on measure", imageName: "mypic.png")

    func getAnalyzeTools() -> [Tool] {
        return analyzeTools
    }
    
    func getAnalyzeSteps() -> [Step] {
        return analyzeSteps
    }
    
    func getControlTools() -> [Tool] {
        return controlTools
    }
    
    func getControlSteps() -> [Step] {
        return controlSteps
    }
    
    func getMeasureSteps() -> [Step] {
        return measureSteps
    }
    func getImproveSteps() -> [Step] {
        return improveSteps
    }
    
    func getMeasureTools() -> [Tool] {
        return measureTools
    }

    func getDefineSteps() -> [Step] {
        return defineSteps
    }
    
    func getDefineTools() -> [Tool] {
        return defineTools
    }
    func getImproveTools() -> [Tool] {
        return improveTools
    }
    
    func getStage(forStage stageName: String) -> Stage {
        switch stageName {
        case "DEFINE":
            return Stage(title: "Define", tagline: "Define and quantify the problem and objective", prose: Prose(paragraph: "lot of text here", imageName: "bbb.png"), bgColor: UIColor(red: 0.5882, green: 0.502, blue: 0.3647, alpha: 1.0), highlightColor: UIColor(red: 0.7216, green: 0.5451, blue: 0.149, alpha: 1.0))
        case "MEASURE":
            return Stage(title: "Measure", tagline: "Baseline process, validate measures", prose: Prose(paragraph: "lot of text here", imageName: "bbb.png"), bgColor: UIColor(red: 0.9451, green: 0.7608, blue: 0.7686, alpha: 1.0), highlightColor: UIColor(red: 0.7412, green: 0.3451, blue: 0.1216, alpha: 1.0))
        case "ANALYZE":
            return Stage(title: "Analyze", tagline: "Analyze and validate causes and identifying critical x's", prose: Prose(paragraph: "lots of text here", imageName: "ccc.png"), bgColor: UIColor(red: 0.7059, green: 0.7961, blue: 0.8824, alpha: 1.0), highlightColor: UIColor(red: 0.3255, green: 0.6118, blue: 0.8784, alpha: 1.0))
        case "IMPROVE":
            return Stage(title: "Improve", tagline: "Develop and Validate Solutions", prose: Prose(paragraph: "lots of text here", imageName: "ccc.png"), bgColor: UIColor(red: 0.7529, green: 0.8471, blue: 0.6941, alpha: 1.0), highlightColor: UIColor(red: 0.4314, green: 0.6549, blue: 0.251, alpha: 1.0))
        case "CONTROL":
            return Stage(title: "Control", tagline: "Implement & Control critical X's and sustain solutions", prose: Prose(paragraph: "lots of text here", imageName: "ccc.png"), bgColor: UIColor(red: 0.7922, green: 0.7922, blue: 0.7922, alpha: 1.0), highlightColor: UIColor(red: 0.6314, green: 0.6314, blue: 0.6314, alpha: 1.0))
        default:
            return Stage(title: "Define", tagline: "Define and quantify the problem and objective", prose: Prose(paragraph: "lot of text here", imageName: "bbb.png"), bgColor: UIColor(red: 0x96, green: 0x80, blue: 0x5D, alpha: 1.0), highlightColor: UIColor(red: 0xB8, green: 0x8B, blue: 0x26, alpha: 1.0))
        }
    }
    
    func getSteps(forStage stage: String) -> [Step] {
        switch stage {
        case "DEFINE":
            return getDefineSteps()
        case "MEASURE":
            return getMeasureSteps()
        case "ANALYZE":
            return getAnalyzeSteps()
        case "IMPROVE":
            return getImproveSteps()
        case "CONTROL":
            return getControlSteps()
        default:
            return getDefineSteps()
        }
    }
    
    func getTools(forStage stage: String) -> [Tool] {
        switch stage {
        case "DEFINE":
            return getDefineTools()
        case "MEASURE":
            return getMeasureTools()
        case "ANALYZE":
            return getAnalyzeTools()
        case "IMPROVE":
            return getImproveTools()
        case "CONTROL":
            return getControlTools()
        default:
            return getDefineTools()
        }
    }

    
}
