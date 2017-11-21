//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by Hazem Mohamed Magdy on 11/21/17.
//  Copyright © 2017 Rana. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {

    var delegate: colorTransferDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func colorBtnPressed(sender: UIButton) {
        
        if(delegate != nil) {
            print(sender.titleLabel?.text!)
            delegate?.colorUserChose(color: sender.backgroundColor!, colorName: sender.titleLabel!.text!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
