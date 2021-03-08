//
//  ViewController.swift
//  WeightConverter
//
//  Created by Frank Kearns on 3/2/21.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var PoundsField: NSTextField!
    @IBOutlet weak var KGField: NSTextField!
    var fromPounds = true;
    @IBOutlet weak var Swap: NSButton!
    @IBOutlet weak var SubmitBtn: NSButton!
    @IBOutlet weak var lbsLabel: NSTextField!
    @IBOutlet weak var kgLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func onClickSwap(_ sender: NSButton) {
        fromPounds = !fromPounds;
        if (fromPounds) {
            lbsLabel.stringValue = "Pounds:";
            kgLabel.stringValue = "Kilograms:";
        } else {
            lbsLabel.stringValue = "Kilograms:";
            kgLabel.stringValue = "Pounds:";
        }
    }
    
    @IBAction func onSubmit(_ sender: NSButton) {
        if (fromPounds) {
            let lbsStr = PoundsField.stringValue;
            let kg: Double = Double(lbsStr)! * 0.4536;
            KGField.stringValue = String(kg);
        } else {
            let kgStr = PoundsField.stringValue;
            let lbs: Double = Double(kgStr)! * 2.2046;
            KGField.stringValue = String(lbs);
        }
    }
}

