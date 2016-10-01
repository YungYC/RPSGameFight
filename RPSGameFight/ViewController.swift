//
//  ViewController.swift
//  RPSGameFight
//
//  Created by Duncan on 2016/2/17.
//  Copyright © 2016年 Duncan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //判定猜拳結果輸贏function  2016.2
    //0:Rock, 1:Paper, 2:Scissors
    //return true = win, false = lose, nil = 平手
    
    var myRPSInput = 0
    var opponentRPSInput = 0
    var myCount = 0
    var opponentCount = 0
    
    func isRPSResultWin(me:Int?, opponent:Int?) -> Bool?{
        var result:Bool?
        if (me == 0 && opponent == 2) || (me == 1 && opponent == 0) || (me == 2 && opponent == 1){
            result = true
        }else if
            (me == 0 && opponent == 1) || (me == 1 && opponent == 2) || (me == 2 && opponent == 0){
                result = false
        }
        return result
    }

    @IBOutlet weak var winImage: UIImageView!
    @IBOutlet weak var winImageDown: UIImageView!
    @IBOutlet weak var loseImage: UIImageView!
    @IBOutlet weak var loseImageDown: UIImageView!
    @IBOutlet weak var drawImageDown: UIImageView!
    @IBOutlet weak var drawImage: UIImageView!
    @IBOutlet weak var waitImage: UIImageView!
    @IBOutlet weak var waitImageDown: UIImageView!
    
    @IBAction func myScissorButton(sender: UIButton) {
        myRPSInput = 2

        winImage.hidden = true
        winImageDown.hidden = true
        loseImage.hidden = true
        loseImageDown.hidden = true
        drawImage.hidden = true
        drawImageDown.hidden = true
        waitImage.hidden = true
        waitImageDown.hidden = true
        
        if myCount == opponentCount{
            myCount++
        }else if myCount > opponentCount{
            waitImage.hidden = false
        }else{
            if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == true{
                winImage.hidden = false
                loseImageDown.hidden = false
            }else if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == false{
                loseImage.hidden = false
                winImageDown.hidden = false
            }else{
                drawImage.hidden = false
                drawImageDown.hidden = false
            }
            myCount++
        }
    }
    @IBAction func myRockButton(sender: UIButton) {
        myRPSInput = 0

        winImage.hidden = true
        winImageDown.hidden = true
        loseImage.hidden = true
        loseImageDown.hidden = true
        drawImage.hidden = true
        drawImageDown.hidden = true
        waitImage.hidden = true
        waitImageDown.hidden = true
        
        if myCount == opponentCount{
            myCount++
        }else if myCount > opponentCount{
            waitImage.hidden = false
        }else{
            if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == true{
                winImage.hidden = false
                loseImageDown.hidden = false
            }else if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == false{
                loseImage.hidden = false
                winImageDown.hidden = false
            }else{
                drawImage.hidden = false
                drawImageDown.hidden = false
            }
            myCount++
        }
    }
    @IBAction func myPaperButton(sender: UIButton) {
        myRPSInput = 1
        
        winImage.hidden = true
        winImageDown.hidden = true
        loseImage.hidden = true
        loseImageDown.hidden = true
        drawImage.hidden = true
        drawImageDown.hidden = true
        waitImage.hidden = true
        waitImageDown.hidden = true
        
        if myCount == opponentCount{
            myCount++
        }else if myCount > opponentCount{
            waitImage.hidden = false
        }else{
            if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == true{
                winImage.hidden = false
                loseImageDown.hidden = false
            }else if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == false{
                loseImage.hidden = false
                winImageDown.hidden = false
            }else{
                drawImage.hidden = false
                drawImageDown.hidden = false
            }
            myCount++
        }
    }
    @IBAction func otherScissorButton(sender: UIButton) {
        opponentRPSInput = 2
        
        winImage.hidden = true
        winImageDown.hidden = true
        loseImage.hidden = true
        loseImageDown.hidden = true
        drawImage.hidden = true
        drawImageDown.hidden = true
        waitImage.hidden = true
        waitImageDown.hidden = true
        
        if myCount == opponentCount{
            opponentCount++
        }else if myCount < opponentCount{
            waitImageDown.hidden = false
        }else{
            if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == true{
                winImage.hidden = false
                loseImageDown.hidden = false
            }else if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == false{
                loseImage.hidden = false
                winImageDown.hidden = false
            }else{
                drawImage.hidden = false
                drawImageDown.hidden = false
            }
            opponentCount++
        }
    }
    @IBAction func otherPaperButton(sender: UIButton) {
        opponentRPSInput = 1
        
        winImage.hidden = true
        winImageDown.hidden = true
        loseImage.hidden = true
        loseImageDown.hidden = true
        drawImage.hidden = true
        drawImageDown.hidden = true
        waitImage.hidden = true
        waitImageDown.hidden = true
        
        if myCount == opponentCount{
            opponentCount++
        }else if myCount < opponentCount{
            waitImageDown.hidden = false
        }else{
            if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == true{
                winImage.hidden = false
                loseImageDown.hidden = false
            }else if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == false{
                loseImage.hidden = false
                winImageDown.hidden = false
            }else{
                drawImage.hidden = false
                drawImageDown.hidden = false
            }
            opponentCount++
        }
    }
    @IBAction func otherRockButton(sender: UIButton) {
        opponentRPSInput = 0

        winImage.hidden = true
        winImageDown.hidden = true
        loseImage.hidden = true
        loseImageDown.hidden = true
        drawImage.hidden = true
        drawImageDown.hidden = true
        waitImage.hidden = true
        waitImageDown.hidden = true
        
        if myCount == opponentCount{
            opponentCount++
        }else if myCount < opponentCount{
            waitImageDown.hidden = false
        }else{
            if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == true{
                winImage.hidden = false
                loseImageDown.hidden = false
            }else if isRPSResultWin(myRPSInput, opponent: opponentRPSInput) == false{
                loseImage.hidden = false
                winImageDown.hidden = false
            }else{
                drawImage.hidden = false
                drawImageDown.hidden = false
            }
            opponentCount++
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}

