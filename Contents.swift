// 電子レンジ

class MicroewaveMachine {
    // 初期ワット数　500W,1000Wで分ける
    var watt = 0
    // 500Wの時間(秒)　1000Wの場合は半分の秒数
    let curryriceTime = 90
    let chickenTime = 120
    let eggTime = 60
    
    let curryriceStartTimeRange500 = 0...90
    let chickenStartTimeRange500 = 0...120
    let eggStartTimeRange500 = 0...60
    
    let curryriceStartTimeRange1000 = 0...45
    let chickenStartTimeRange1000 = 0...60
    let eggStartTimeRange1000 = 0...30
    
    enum FoodType {
        case curryrice
        case chicken
        case egg
    }
    
    
    func warmFood(type: FoodType) -> Bool {
        var isWarm = false
        switch type {
        case .curryrice:
            isWarm = 0 < watt
            if isWarm {
                if watt == 500 {
                    print("500Wでセットされました")
                    print("\(curryriceTime)秒で調理します。")
                    for isTimer in (curryriceStartTimeRange500).reversed() {
                        print("\(isTimer)")
                    }
                    print("調理完了しました。")
                }else if watt == 1000 {
                    print("1000Wでセットされました")
                    print("\(curryriceTime / 2)秒で調理します。")
                    for isTimer in (curryriceStartTimeRange1000).reversed() {
                        print("\(isTimer)")
                    }
                    print("調理完了しました。")
                }
            }
        case .chicken:
            isWarm = 0 < watt
            if isWarm {
                if watt == 500 {
                    print("500Wでセットされました")
                    print("\(chickenTime)秒で調理します。")
                    for isTimer in (chickenStartTimeRange500).reversed() {
                        print("\(isTimer)")
                    }
                    print("調理完了しました。")
                }else if watt == 1000 {
                    print("1000Wでセットされました")
                    print("\(chickenTime / 2)秒で調理します。")
                    for isTimer in (chickenStartTimeRange1000).reversed() {
                        print("\(isTimer)")
                    }
                    print("調理完了しました。")
                }
            }
        case .egg:
            isWarm = 0 < watt
            if isWarm {
                if watt == 500 {
                    print("500Wでセットされました")
                    print("\(eggTime)秒で調理します。")
                    for isTimer in (eggStartTimeRange500).reversed() {
                        print("\(isTimer)")
                    }
                    print("爆発しました。")
                }else if watt == 1000 {
                    print("1000Wでセットされました")
                    print("\(eggTime / 2)秒で調理します。")
                    for isTimer in (eggStartTimeRange1000).reversed() {
                        print("\(isTimer)")
                    }
                    print("爆発しました。")
                }
            }
            
        }
        return isWarm
    }
}

let warmMachine = MicroewaveMachine()
warmMachine.watt = 500

let isWarm = warmMachine.warmFood(type: .egg)





