//
//  Timer.swift
//  Timer
//
//  Created by qi chao on 2017/7/3.
//  Copyright © 2017年 qi chao. All rights reserved.
//

import UIKit

class Timer: UIView {

    fileprivate var timer: DispatchSourceTimer?

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.gray
        createTimer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Timer View deinit")
        removeTimer()
    }
    
}

fileprivate extension Timer {
    func createTimer() {
        let queue = DispatchQueue.global()
        timer = DispatchSource.makeTimerSource(flags: [], queue: queue)
        timer!.scheduleRepeating(deadline: .now() + DispatchTimeInterval.seconds(3), interval: DispatchTimeInterval.seconds(1))
        timer!.setEventHandler {
            print("定时器")
        }
        timer!.resume()
    }
    
    func removeTimer() {
        guard let timer = timer else {
            return
        }
        timer.cancel()
    }

}
