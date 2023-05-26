//
//  GameScene4.swift
//  MoveIt
//
//  Created by Angela Valentine Darmawan on 25/05/23.
//

import SpriteKit

class GameScene4: SKScene {
    var bg: SKSpriteNode!
    var black: SKSpriteNode!
    var white: SKSpriteNode!
    var item1: SKSpriteNode!
    var item2: SKSpriteNode!
    var item3: SKSpriteNode!
    var item4: SKSpriteNode!
    var item5: SKSpriteNode!
    var item6: SKSpriteNode!
    var item7: SKSpriteNode!
    
    var check: Bool = false
    let title = SKLabelNode(text: "Level 4")
    let button = Button()
    let label = SKLabelNode(text: "Next")
    var flag = 0
    var a: Bool = false
    var b: Bool = false
    
    override func didMove(to view: SKView) {
        bg = SKSpriteNode(imageNamed: "bg")
        bg.size = self.view!.frame.size
        bg.zPosition = -1
        
        addChild(bg)
        
        title.position = CGPoint(x: 0, y: 250)
        title.fontColor = .black
        title.fontSize = CGFloat(60)
        addChild(title)
        
        black = SKSpriteNode(imageNamed: "circleBlack")
        black.position = CGPoint(x: -30, y: -240)
        white = SKSpriteNode(imageNamed: "circleWhite")
        white.position = CGPoint(x: 135, y: -180)
        
        item1 = SKSpriteNode(imageNamed: "circleWhite")
        item1.position = CGPoint(x: -110, y: 110)
        item2 = SKSpriteNode(imageNamed: "circleWhite")
        item2.position = CGPoint(x:110, y: 110)
        item3 = SKSpriteNode(imageNamed: "circleBlack")
        item3.position = CGPoint(x: -110, y: 0)
        item4 = SKSpriteNode(imageNamed: "circleWhite")
        item4.position = CGPoint(x: 0, y: 0)
        item5 = SKSpriteNode(imageNamed: "circleBlack")
        item5.position = CGPoint(x: 110, y: 0)
        item6 = SKSpriteNode(imageNamed: "circleWhite")
        item6.position = CGPoint(x: -110, y: -110)
        item7 = SKSpriteNode(imageNamed: "circleBlack")
        item7.position = CGPoint(x: 0, y: -110)
        
        addChild(item1)
        addChild(item2)
        addChild(item3)
        addChild(item4)
        addChild(item5)
        addChild(item6)
        addChild(item7)
        
        addChild(black)
        addChild(white)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            if nodes(at: location).first == button || nodes(at: location).first == label {
                let scene = SKScene(fileNamed: "GameScene5")
                scene?.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let touch1 = touch.location(in: self)
            let node = nodes(at: touch1).first
            let desiredPosition1 = CGPoint(x: 0, y: 110)
            let desiredPosition2 = CGPoint(x: 110, y: -110)
            
            if node == black && black.position != desiredPosition1{
                black.position = touch1
                
                if (black.position.x-5 <= desiredPosition1.x &&
                    black.position.x+5 >= desiredPosition1.x &&
                    black.position.y-5 <= desiredPosition1.y &&
                    black.position.y+5 >= desiredPosition1.y ) && !check && !a {
                    flag += 1
                    a = true
                    print("flag black \(flag) a \(a)")
                    black.position = desiredPosition1
                }
            } else if node == white && white.position != desiredPosition2{
                white.position = touch1
                
                if (white.position.x-5 <= desiredPosition2.x && white.position.x+5 >= desiredPosition2.x && white.position.y-5 <= desiredPosition2.y && white.position.y+5 >= desiredPosition2.y ) && !check && !b {
                    flag += 1
                    b = true
                    print("flag white \(flag) b \(b)")
                    white.position = desiredPosition2
                }
            }
            print("flag total \(flag) a \(a) b \(b)")
            if flag == 2 && !check{
                check = true
                nextMove()
            }
        }
    }
    
    func nextMove() {
        if check == true {
            
            button.path = UIBezierPath(roundedRect: CGRect(x: -50, y: -25 - 300, width: 100, height: 50), cornerRadius: 15).cgPath
            
            label.position = CGPoint(x: 0, y: -310)
            label.zPosition = 2
            label.fontColor = .black
            
            addChild(label)
            addChild(button)
        }
    }
}

