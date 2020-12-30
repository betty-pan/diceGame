//
//  ViewController.swift
//  diceGame
//
//  Created by BettyPan on 2020/12/29.
//

import UIKit



class ViewController: UIViewController {
    @IBOutlet weak var playerAScoreLabel: UILabel!
    @IBOutlet weak var playerBScoreLabel: UILabel!
    @IBOutlet weak var playerAPointsLabel: UILabel!
    @IBOutlet weak var playerBPointsLabel: UILabel!
    
    @IBOutlet weak var playerADice1ImageView: UIImageView!
    @IBOutlet weak var playerADice2ImageView: UIImageView!
    @IBOutlet weak var playerADice3ImageView: UIImageView!
    
    @IBOutlet weak var playerBDice1ImageView: UIImageView!
    @IBOutlet weak var playerBDice2ImageView: UIImageView!
    @IBOutlet weak var playerBDice3ImageView: UIImageView!
    
    @IBOutlet weak var AWinImageView: UIImageView!
    @IBOutlet weak var BWinImageView: UIImageView!
    
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    //使用array依序產出骰子點數圖片
    let diceImages = ["dice1","dice2", "dice3", "dice4", "dice5", "dice6"]
    //定義骰子總和數數字、贏得之總場次數字
    var playerAResult = 0
    var playerBResult = 0
    var playerASum = 0
    var playerBSum = 0
    //使圖片亂數生成
    func diceRandom() {
        playerADice1ImageView.image = UIImage(named: diceImages.randomElement()!)
        playerADice2ImageView.image = UIImage(named: diceImages.randomElement()!)
        playerADice3ImageView.image = UIImage(named: diceImages.randomElement()!)
        playerBDice1ImageView.image = UIImage(named: diceImages.randomElement()!)
        playerBDice2ImageView.image = UIImage(named: diceImages.randomElement()!)
        playerBDice3ImageView.image = UIImage(named: diceImages.randomElement()!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //將物件隱藏
        playAgainButton.isHidden = true
        AWinImageView.isHidden = true
        BWinImageView.isHidden = true
    }
    
    @IBAction func rollTheDice(_ sender: UIButton) {
        //將骰子總和在func裡為0（當每次點下Button骰子總和都將從0開始）
        playerASum = 0
        playerBSum = 0
        
        //骰子圖片亂數顯示
        diceRandom()
        
        //設定骰子圖片對應點數Ａ1（總共六顆骰子，需分別設定六顆骰子對應分數）
        if playerADice1ImageView.image == UIImage(named: diceImages[0]) {
            playerASum = playerASum+1
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice1ImageView.image == UIImage(named: diceImages[1]) {
            playerASum = playerASum+2
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice1ImageView.image == UIImage(named: diceImages[2]) {
            playerASum = playerASum+3
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice1ImageView.image == UIImage(named: diceImages[3]) {
            playerASum = playerASum+4
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice1ImageView.image == UIImage(named: diceImages[4]) {
            playerASum = playerASum+5
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice1ImageView.image == UIImage(named: diceImages[5]) {
            playerASum = playerASum+6
            playerAPointsLabel.text = "\(playerASum)"
        }
        //設定骰子圖片對應點數Ａ2
        if playerADice2ImageView.image == UIImage(named: diceImages[0]) {
            playerASum = playerASum+1
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice2ImageView.image == UIImage(named: diceImages[1]) {
            playerASum = playerASum+2
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice2ImageView.image == UIImage(named: diceImages[2]) {
            playerASum = playerASum+3
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice2ImageView.image == UIImage(named: diceImages[3]) {
            playerASum = playerASum+4
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice2ImageView.image == UIImage(named: diceImages[4]) {
            playerASum = playerASum+5
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice2ImageView.image == UIImage(named: diceImages[5]) {
            playerASum = playerASum+6
            playerAPointsLabel.text = "\(playerASum)"
        }
        //設定骰子圖片對應點數Ａ3
        if playerADice3ImageView.image == UIImage(named: diceImages[0]) {
            playerASum = playerASum+1
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice3ImageView.image == UIImage(named: diceImages[1]) {
            playerASum = playerASum+2
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice3ImageView.image == UIImage(named: diceImages[2]) {
            playerASum = playerASum+3
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice3ImageView.image == UIImage(named: diceImages[3]) {
            playerASum = playerASum+4
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice3ImageView.image == UIImage(named: diceImages[4]) {
            playerASum = playerASum+5
            playerAPointsLabel.text = "\(playerASum)"
        }else if playerADice3ImageView.image == UIImage(named: diceImages[5]) {
            playerASum = playerASum+6
            playerAPointsLabel.text = "\(playerASum)"
        }
        //設定骰子圖片對應點數B1
        if playerBDice1ImageView.image == UIImage(named: diceImages[0]) {
            playerBSum = playerBSum+1
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice1ImageView.image == UIImage(named: diceImages[1]) {
            playerBSum = playerBSum+2
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice1ImageView.image == UIImage(named: diceImages[2]) {
            playerBSum = playerBSum+3
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice1ImageView.image == UIImage(named: diceImages[3]) {
            playerBSum = playerBSum+4
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice1ImageView.image == UIImage(named: diceImages[4]) {
            playerBSum = playerBSum+5
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice1ImageView.image == UIImage(named: diceImages[5]) {
            playerBSum = playerBSum+6
            playerBPointsLabel.text = "\(playerBSum)"
        }
        //設定骰子圖片對應點數B2
        if playerBDice2ImageView.image == UIImage(named: diceImages[0]) {
            playerBSum = playerBSum+1
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice2ImageView.image == UIImage(named: diceImages[1]) {
            playerBSum = playerBSum+2
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice2ImageView.image == UIImage(named: diceImages[2]) {
            playerBSum = playerBSum+3
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice2ImageView.image == UIImage(named: diceImages[3]) {
            playerBSum = playerBSum+4
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice2ImageView.image == UIImage(named: diceImages[4]) {
            playerBSum = playerBSum+5
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice2ImageView.image == UIImage(named: diceImages[5]) {
            playerBSum = playerBSum+6
            playerBPointsLabel.text = "\(playerBSum)"
        }
        //設定骰子圖片對應點數B3
        if playerBDice3ImageView.image == UIImage(named: diceImages[0]) {
            playerBSum = playerBSum+1
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice3ImageView.image == UIImage(named: diceImages[1]) {
            playerBSum = playerBSum+2
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice3ImageView.image == UIImage(named: diceImages[2]) {
            playerBSum = playerBSum+3
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice3ImageView.image == UIImage(named: diceImages[3]) {
            playerBSum = playerBSum+4
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice3ImageView.image == UIImage(named: diceImages[4]) {
            playerBSum = playerBSum+5
            playerBPointsLabel.text = "\(playerBSum)"
        }else if playerBDice3ImageView.image == UIImage(named: diceImages[5]) {
            playerBSum = playerBSum+6
            playerBPointsLabel.text = "\(playerBSum)"
        }
        
        //設定playerA/B 總得分
        if playerASum > playerBSum {
            playerAResult = playerAResult+1
            playerAScoreLabel.text = "\(playerAResult)"
        }else if playerASum < playerBSum {
            playerBResult = playerBResult+1
            playerBScoreLabel.text = "\(playerBResult)"
        }
        
        //設定先獲得5分者勝利
        if playerAResult == 5 {
            AWinImageView.isHidden = false
            playAgainButton.isHidden = false
            rollButton.isHidden = true
        }else if playerBResult == 5 {
            BWinImageView.isHidden = false
            playAgainButton.isHidden = false
            rollButton.isHidden = true
    }
    }
    @IBAction func restart(_ sender: UIButton) {
        AWinImageView.isHidden = true
        BWinImageView.isHidden = true
        playerAResult = 0
        playerBResult = 0
        playerASum = 0
        playerBSum = 0
        playerAPointsLabel.text = "\(playerAResult)"
        playerBPointsLabel.text = "\(playerBResult)"
        playerAScoreLabel.text = "\(playerASum)"
        playerBScoreLabel.text = "\(playerBSum)"
        
        rollButton.isHidden = false
        playAgainButton.isHidden = true
    }
    

}

