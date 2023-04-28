// 電子レンジ

class MicroewaveMachine {
    // 初期ワット数　500W,1000Wで分ける
    var watt = 0
    // 500Wの時間(秒)　1000Wの場合は半分の秒数
    var curryriceTime = 90
    var chickenTime = 120
    var eggTime = 60
    
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
                    print("\(curryriceTime)秒で調理します。")
                }else if watt == 1000 {
                    print("\(curryriceTime / 2)秒で調理します。")
                }
            }
        case .chicken:
            isWarm = 0 < watt
            if isWarm {
                if watt == 500 {
                    print("\(chickenTime)秒です。")
                }else if watt == 1000 {
                    print("\(chickenTime / 2)秒です。")
                }
            }
        case .egg:
            isWarm = 0 < watt
            if isWarm {
                if watt == 500 {
                    print("爆発しました。")
                }else if watt == 1000 {
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





