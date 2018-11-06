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
        return String(format: "%02x", rnd)
    }
    
    class func checkAns(Pro: String, Ans: String) -> (String, String){
        let pro:Int = Int(Pro, radix:16)!
        let ans:Int = Int(Ans, radix:2)!
        
        let fpro: String = String(format: "%02x", pro)
        var fans: String = String(pro, radix: 2)
        
        let con: Int = 8 - fans.count
        
        if con > 1{
            for _ in 0..<con{
                fans = "0" + fans
            }
        }
        
        let str:String = "16進数で " + fpro + " は\n2進数で " + fans + " です"
        
        if pro == ans {
            return ("正解!!", str)
        }
        else{
            return ("不正解!!", str)
        }
    }
}
