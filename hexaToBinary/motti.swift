//
//  motti.swift
//  hexaToBinary
//
//  Created by ryoma on 2018/11/06.
//  Copyright © 2018年 ryoma. All rights reserved.
//

import Foundation

class motti{
    
    class func makeRandam() -> String{
        let size = 100
        let rnd: Int = Int(arc4random_uniform(UInt32(size)))
        return String(rnd, radix:16)
    }
    
    class func checkAns(Pro: String, Ans: String) -> (String, String){
        let pro:Int = Int(Pro, radix:16)!
        let ans:Int = Int(Ans, radix:2)!
        
        let str:String = "16進数で " + Pro + " は 2進数で " + String(pro, radix:2) + "です"
        
        if pro == ans {
            return ("正解!!", str)
        }
        else{
            return ("不正解!!", str)
        }
    }
}
