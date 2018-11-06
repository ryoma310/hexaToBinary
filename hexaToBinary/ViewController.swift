//
//  ViewController.swift
//  hexaToBinary
//
//  Created by ryoma on 2018/11/06.
//  Copyright © 2018年 ryoma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var problemText: UILabel!
    @IBOutlet weak var anwerText: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var judge: UILabel!
    
    @IBAction func InputNumberButton(_ sender: UIButton) {
        guard let answerContents = anwerText.text else {
            return
        }
        guard let senderedText = sender.titleLabel?.text else {
            return
        }
        if answerContents.count < 8{
            anwerText.text = answerContents + senderedText
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        problemText.text = motti.makeRandam()
        anwerText.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cancelAnswer(_ sender: Any) {
        if (anwerText.text?.count)! > 0 {
            let ans: String = anwerText.text!
            anwerText.text = String(ans.prefix(ans.count - 1))
        }
    }
    
    @IBAction func answerToProblem(_ sender: Any) {
        if anwerText.text == ""{
            return
        }
        let conf = motti.checkAns(Pro: problemText.text!, Ans: anwerText.text!)
        judge.text = conf.0
        status.text = conf.1
        
        anwerText.text = ""
        problemText.text = motti.makeRandam()
        
        
    }
}

