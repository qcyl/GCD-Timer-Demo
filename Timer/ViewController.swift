//
//  ViewController.swift
//  Timer
//
//  Created by qi chao on 2017/7/3.
//  Copyright © 2017年 qi chao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func click(_ sender: Any) {
        navigationController?.pushViewController(DemoController(), animated: true)
    }


}

