//
//  ViewController.swift
//  iosCalculator
//
//  Created by NDM on 11/23/16.
//  Copyright © 2016 Rome Rock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorNumberBackgroundSC: UISegmentedControl!
    @IBOutlet var colorTextSC: UISegmentedControl!
    @IBOutlet var colorOperationsBackgroundSC: UISegmentedControl!
    @IBOutlet var colorFunctionsBackgroundSC: UISegmentedControl!
    @IBOutlet var colorPanelBackgroundSC: UISegmentedControl!
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func optionButtonPressed(_ sender: Any) {
        let customView = Bundle.main.loadNibNamed("CalculatorView", owner: nil, options: nil)?[0] as! CalculatorView
        
        let colors = [UIColor.red, UIColor.blue, UIColor.yellow, UIColor.green, UIColor.gray]
        customView.setNumbersColor(color: colors[colorTextSC.selectedSegmentIndex])
        customView.setOperationsColor(color: colors[colorOperationsBackgroundSC.selectedSegmentIndex])
        customView.setResultsColor(color: colors[colorNumberBackgroundSC.selectedSegmentIndex])
        customView.setOtherButtonsColor(color: colors[colorFunctionsBackgroundSC.selectedSegmentIndex])
        customView.setPanelTextColor(color: colors[colorPanelBackgroundSC.selectedSegmentIndex])
        
        customView.addView(view: self.view)
    }


}

