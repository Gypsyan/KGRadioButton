//
//  ViewController.swift
//  demoApp
//
//  Created by Anantha Krishnan K G on 07/11/16.
//  Copyright © 2016 Ananth. All rights reserved.
//

import UIKit
import KGRadioButton
class ViewController: UIViewController {
    @IBOutlet var label: UILabel!

    let button = KGRadioButton(frame: CGRect(x: 20, y: 170, width: 50, height: 50))
    let label2 = UILabel(frame: CGRect(x: 90, y: 160, width: 200, height: 70))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button.addTarget(self, action: #selector(manualAction(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
        label2.text = "Not Selected"
        self.view.addSubview(label2)
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func manualAction (sender: KGRadioButton) {
         sender.isSelected = !sender.isSelected
        if sender.isSelected {
            label2.text = "Selected"
        } else{
            label2.text = "Not Selected"
        }
    }
    @IBAction func didPressButton(_ sender: KGRadioButton) {
        
        
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            label.text = "Selected"
        } else{
            label.text = "Not Selected"
        }
    }
}

