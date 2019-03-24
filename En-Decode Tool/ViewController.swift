//
//  ViewController.swift
//  En-Decode Tool
//
//  Created by Peter XU on 3/23/19.
//  Copyright © 2019 Peter XU. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var inputCell: NSTextView!
    @IBOutlet var outputCell: NSTextView!
    
    @IBAction func encodeClicked(_ sender: Any) {
        outputCell.string = MyEncode(inputCell.string)
    }
    @IBAction func decodeClicked(_ sender: Any) {
        outputCell.string = MyDecode(inputCell.string)
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

