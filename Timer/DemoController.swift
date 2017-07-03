//
//  DemoController.swift
//  Timer
//
//  Created by qi chao on 2017/7/3.
//  Copyright © 2017年 qi chao. All rights reserved.
//

import UIKit

class DemoController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let timer = Timer(frame: CGRect(x: 0, y: 64, width: 100, height: 100))
        view.addSubview(timer)
    }
    
    
    deinit {
        print("vc deinit")
    }

}
