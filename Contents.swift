import UIKit

var str = "Hello, playground"


//Pas Data between Two Object


protocol PassDataDelegate{
    func PassData(data:String)
}


class FirstVC{
    var delegate: PassDataDelegate?
}


class SecondVc:PassDataDelegate{
    func PassData(data: String) {
        print("Something is happend to your data changed to \(data)")
    }
}


let firstVc = FirstVC()
let seocndVC = SecondVc()

firstVc.delegate = seocndVC
firstVc.delegate?.PassData(data: "a bunch of contracts")



