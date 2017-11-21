//
//  ColorPresenterVC.swift
//  Color Magic
//
//  Created by Hazem Mohamed Magdy on 11/21/17.
//  Copyright © 2017 Rana. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController , colorTransferDelegate{
    @IBOutlet weak var ColorNameLB: UILabel!

    func colorUserChose(color: UIColor, colorName: String) {
        ColorNameLB.text = colorName
        view.backgroundColor = color
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC" {
            guard let ColorPickerVC = segue.destination as? ColorPickerVC else {return}
            ColorPickerVC.delegate = self
        }
    }
}

