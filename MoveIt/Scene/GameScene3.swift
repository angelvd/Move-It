//
//  GameScene3.swift
//  MoveIt
//
//  Created by Angela Valentine Darmawan on 23/05/23.
//

import SpriteKit

class GameScene3: SKScene {
    var bg: SKSpriteNode!
    var player: SKSpriteNode!
    var item1: SKSpriteNode!
    var item2: SKSpriteNode!
    var item3: SKSpriteNode!
    var item4: SKSpriteNode!
    var item5: SKSpriteNode!
    
    var check: Bool = false
    let title = SKLabelNode(text: "Level 3")
    let button = Button()
    let label = SKLabelNode(text: "Next")
    
    override func didMove(to view: SKView) {
        bg = SKSpriteNode(imageNamed: "bg")
        bg.size = self.view!.frame.size
        bg.zPosition = -1
        
        addChild(bg)
        
        title.position = CGPoint(x: 0, y: 250)
        title.fontColor = .black
        title.fontSize = CGFloat(60)
        addChild(title)
        
        player = SKSpriteNode(imageNamed: "triangle")
        player.position = CGPoint(x: -92, y: -180)
        item1 = SKSpriteNode(imageNamed: "triangle")
        item1.position = CGPoint(x: 0, y: 80)
        item2 = SKSpriteNode(imageNamed: "triangle")
        item2.position = CGPoint(x: -46, y: 0)
        item3 = SKSpriteNode(imageNamed: "triangle")
        item3.position = CGPoint(x: 46, y: 0)
        item4 = SKSpriteNode(imageNamed: "triangle")
        item4.position = CGPoint(x: 0, y: -80)
        item5 = SKSpriteNode(imageNamed: "triangle")
        item5.position = CGPoint(x: 92, y: -80)
        
        addChild(item1)
        addChild(item2)
        addChild(item3)
        addChild(item4)
        addChild(item5)
        addChild(player)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            if nodes(at: location).first == button || nodes(at: location).first == label {
                let scene = SKScene(fileNamed: "GameScene4")
                scene?.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            player.position = location
            
            let desiredPosition = CGPoint(x: -92, y: -80)

            if (player.position.x-5 <= desiredPosition.x && player.position.x+5 >= desiredPosition.x && player.position.y-5 <= desiredPosition.y && player.position.y+5 >= desiredPosition.y ) && !check {
                print("Sprite is in the right place!")
                check = true
                print("check is \(check)")
                nextMove()
            } else {
                print("No.")
            }
            
            if check == true {
                player.position = desiredPosition
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

