//
//  ViewController.swift
//  iosCalculator
//
//  Created by NDM on 11/23/16.
//  Copyright © 2016 Rome Rock. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet var menuItem: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if self.revealViewController() != nil {
            menuItem.target = self.revealViewController()
            menuItem.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            self.revealViewController().panGestureRecognizer().delegate = self
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openButtonPressed(_ sender: Any) {
        let calculatorViewController:UIViewController = UIViewController()
        let calculatorView = Bundle.main.loadNibNamed("CalculatorView", owner: nil, options: nil)?[0] as! CalculatorView
        
        //custom Color
        //calculatorView.setPrimaryColor(color: UIColor(hex: "EF4517"))
        //calculatorView.setSecondaryColor(color: UIColor(hex: "C33109"))
        //calculatorView.setPanelColor(color: .red)
        calculatorView.setPrimaryTextColor(color: .red)
        
        calculatorViewController.view = calculatorView
        
        calculatorView.viewController = calculatorViewController
        
        calculatorViewController.modalPresentationStyle = .overFullScreen
        calculatorViewController.modalTransitionStyle = .crossDissolve
        present(calculatorViewController, animated: true, completion: nil)
    }
    

}

