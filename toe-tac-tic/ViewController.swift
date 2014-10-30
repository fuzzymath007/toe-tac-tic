//
//  ViewController.swift
//  toe-tac-tic
//
//  Created by Matthew Chess on 10/28/14.
//  Copyright (c) 2014 Matthew Chess. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var turn = 1
    
    var winner = 0
    
    // 0 is for empty, 1 is O and 2 is X
    
    var gameState = [0,0,0,0,0,0,0,0,0,0]
    
    let winningCombo = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    @IBOutlet var playAgain: UIButton!
    @IBAction func playAgainPresed(sender: AnyObject) {
        
        turn = 0
        
        winner = 0
        
        gameState = [0,0,0,0,0,0,0,0,0,0]
        
        self.label.center = CGPointMake(self.label.center.x - 400, self.label.center.y)
        
        self.playAgain.alpha = 1
        
    }
    @IBOutlet var label: UILabel!
    
    @IBOutlet var button0: UIButton!

    @IBAction func buttonPressed(sender: AnyObject) {
        
        if(gameState[sender.tag]==0 && winner == 0){
        
        var image = UIImage()

        if (turn % 2 == 0){
        
        image = UIImage(named: "cross.png")!
            
            gameState[sender.tag] = 2
            
        }else{
            
        image = UIImage(named: "nought.png")!
            
            gameState[sender.tag] = 1
        
        }
            
            for combination in winningCombo {
                
                if(gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] && gameState[combination[0]] != 0){
                    
                    winner = gameState[gameState[0]]
                    
                }
            }
            
            if(winner != 0){
                
                if(winner == 1){
                    label.text = "The Xs WIN!!!"
                }
                
                if (winner == 2){
                    label.text = "The Os WIN!!"
                }
                
                UIView.animateWithDuration(1, animations:{
                    self.label.center = CGPointMake(self.label.center.x + 400, self.label.center.y)
                    
                    self.playAgain.alpha = 1
                
                })
                
            }
        
        sender.setImage(image, forState: .Normal)
        
        turn++
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
    }
    
    override func viewDidAppear(animated: Bool) {
        self.label.center = CGPointMake(self.label.center.x - 400, self.label.center.y)
        
        playAgain.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

