//
//  HomeScene.swift
//  MoveIt
//
//  Created by Angela Valentine Darmawan on 22/05/23.
//

import SpriteKit

class HomeScene: SKScene {
    
    var bg: SKSpriteNode!
    var logo: SKSpriteNode!
    let button = Button()
    let label = SKLabelNode(text: "Start")
    
    override func didMove(to view: SKView) {
        bg = SKSpriteNode(imageNamed: "bg")
        bg.size = self.view!.frame.size
        bg.zPosition = -1
        
        addChild(bg)
        
        logo = SKSpriteNode(imageNamed: "logo")
        logo.position = CGPoint(x: 0, y: 100)
        
        addChild(logo)
        
        button.path = UIBezierPath(roundedRect: CGRect(x: -50, y: -25 - 200, width: 100, height: 50), cornerRadius: 15).cgPath
        
        label.position = CGPoint(x: 0, y: -210)
        label.zPosition = 1
        label.fontColor = .black

        addChild(label)
        addChild(button)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            if nodes(at: location).first == button || nodes(at: location).first == label {
                let scene = SKScene(fileNamed: "GameScene1")
                scene?.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
        }
    }
}
