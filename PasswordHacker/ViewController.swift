//
//  ViewController.swift
//  PasswordHacker
//
//  Created by Towa Aoyagi on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var result1: UILabel!
    @IBOutlet var result2: UILabel!
    @IBOutlet var result3: UILabel!
    @IBOutlet var result4: UILabel!
    
    @IBOutlet var countLavel: UILabel!
    
    var password: Int = 3512
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start() {
        for i in 0...9999 {
            
            countLavel.text = String(i)
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.005))
            
            if i == password {
                
                var digits = [Int]()
                
                for _ in 0...3 {
                    digits.append(password % 10)
                    password = password / 10
                }
                result1.text = String(digits[3])
                result2.text = String(digits[2])
                result3.text = String(digits[1])
                result4.text = String(digits[0])

                print("正解は\(i)です！")
                break
            }
        }
    }
    
    @IBAction func reset() {
        
        password = Int.random(in: 0000...9999)
        countLavel.text = "スタートを押して解析開始"
        
        result1.text = "0"
        result2.text = "0"
        result3.text = "0"
        result4.text = "0"
        
    }
}

