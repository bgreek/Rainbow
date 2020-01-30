//
//  ColorDetailViewController.swift
//  Rainbow
//
//  Created by Breena Greek on 1/29/20.
//  Copyright © 2020 Breena Greek. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var cellColor: MyColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    

    func updateViews() {
        if let cellColor = cellColor {
            title = cellColor.name
            view.backgroundColor = cellColor.color
        }
    }

}
