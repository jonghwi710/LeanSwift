import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class MicroewaveMachine {
    // 初期ワット数　500W,1000Wで分ける
    var watt = 0
   
    
    var timer: Timer?
    var count: Int = 0
    var limit: Int = 0
    
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
        if watt > 0 && limit > 0{
            count += 1
            print("\(count)")
            if limit <= count {
                print("完了しました。")
                timer?.invalidate()
            }
        // 例外
        }else if watt == 0 {// 電源が入ってない想定
            print("電源が入っていません。")
            timer?.invalidate()
        }else if limit == 0 {// 時間を設定してない想定
            print("時間を設定してください。")
            timer?.invalidate()
        }
    }
    
}

let microewaveMachine = MicroewaveMachine()
microewaveMachine.watt = 500
microewaveMachine.start()






