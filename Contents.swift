import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class MicroewaveMachine {
    // 初期ワット数　500W,1000Wで分ける
    var watt = 0
   
    
    var timer: Timer?
    var count: Int = 0
    var limit: Int = 10
    
    func start() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(countup),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc func countup() {
        count += 1
        print("\(count)")
        if watt == 500 {
            if limit <= count {
                print("完了しました。")
                timer?.invalidate()
            }
        }else if watt == 1000 {
            var limit = limit / 2
            if limit <= count {
                print("完了しました。")
                timer?.invalidate()
            }
        }
    }
    
}

let microewaveMachine = MicroewaveMachine()
microewaveMachine.watt = 1000
microewaveMachine.start()






