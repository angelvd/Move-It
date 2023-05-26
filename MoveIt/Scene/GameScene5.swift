//
//  GameScene5.swift
//  MoveIt
//
//  Created by Angela Valentine Darmawan on 25/05/23.
//

import SpriteKit

class GameScene5: SKScene {
    var bg: SKSpriteNode!
    var place1 = Level2()
    var place2 = Level2()
    var place3 = Level2()
    var place4 = Level2()
    var place5 = Level2()
    
    var item1: SKSpriteNode!
    var item2: SKSpriteNode!
    var item3: SKSpriteNode!
    var item4: SKSpriteNode!
    var item5: SKSpriteNode!
    
    var check: Bool = false
    let title = SKLabelNode(text: "Level 5")
    let button = Button()
    let label = SKLabelNode(text: "Yay!")
    var flag = 0
    var a: Bool = false
    var b: Bool = false
    var c: Bool = false
    var d: Bool = false
    var e: Bool = false
    
    override func didMove(to view: SKView) {
        bg = SKSpriteNode(imageNamed: "bg")
        bg.size = self.view!.frame.size
        bg.zPosition = -1
        
        addChild(bg)
        
        title.position = CGPoint(x: 0, y: 250)
        title.fontColor = .black
        title.fontSize = CGFloat(60)
        addChild(title)
        
        place1.position = CGPoint(x: -110, y: 180)
        place2.position = CGPoint(x: 0, y: 90)
        place3.position = CGPoint(x: 110, y: 0)
        place4.position = CGPoint(x: 0, y: -90)
        place5.position = CGPoint(x: -110, y: -180)
        
        item1 = SKSpriteNode(imageNamed: "squareGreen")
        item1.position = CGPoint(x: 100, y: 180)
        item2 = SKSpriteNode(imageNamed: "squareGreen")
        item2.position = CGPoint(x: -115, y: 45)
        item3 = SKSpriteNode(imageNamed: "squareGreen")
        item3.position = CGPoint(x: 120, y: -105)
        item4 = SKSpriteNode(imageNamed: "squareGreen")
        item4.position = CGPoint(x: -40, y: -130)
        item5 = SKSpriteNode(imageNamed: "squareGreen")
        item5.position = CGPoint(x: 90, y: -230)
        
        addChild(place1)
        addChild(place2)
        addChild(place3)
        addChild(place4)
        addChild(place5)
        
        addChild(item1)
        addChild(item2)
        addChild(item3)
        addChild(item4)
        addChild(item5)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            if nodes(at: location).first == button || nodes(at: location).first == label {
                let scene = SKScene(fileNamed: "HomeScene")
                scene?.scaleMode = .aspectFill
                view?.presentScene(scene)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let touch1 = touch.location(in: self)
            let node = nodes(at: touch1).first
            let desiredPosition1 = place1.position
            let desiredPosition2 = place2.position
            let desiredPosition3 = place3.position
            let desiredPosition4 = place4.position
            let desiredPosition5 = place5.position
            
            let c11 = item1.position.x-5 <= desiredPosition1.x &&
            item1.position.x+5 >= desiredPosition1.x &&
            item1.position.y-5 <= desiredPosition1.y &&
            item1.position.y+5 >= desiredPosition1.y
            let c12 = item1.position.x-5 <= desiredPosition2.x &&
            item1.position.x+5 >= desiredPosition2.x &&
            item1.position.y-5 <= desiredPosition2.y &&
            item1.position.y+5 >= desiredPosition2.y
            let c13 = item1.position.x-5 <= desiredPosition3.x &&
            item1.position.x+5 >= desiredPosition3.x &&
            item1.position.y-5 <= desiredPosition3.y &&
            item1.position.y+5 >= desiredPosition3.y
            let c14 = item1.position.x-5 <= desiredPosition4.x &&
            item1.position.x+5 >= desiredPosition4.x &&
            item1.position.y-5 <= desiredPosition4.y &&
            item1.position.y+5 >= desiredPosition4.y
            let c15 = item1.position.x-5 <= desiredPosition5.x &&
            item1.position.x+5 >= desiredPosition5.x &&
            item1.position.y-5 <= desiredPosition5.y &&
            item1.position.y+5 >= desiredPosition5.y
            
            let c21 = item2.position.x-5 <= desiredPosition1.x &&
            item2.position.x+5 >= desiredPosition1.x &&
            item2.position.y-5 <= desiredPosition1.y &&
            item2.position.y+5 >= desiredPosition1.y
            let c22 = item2.position.x-5 <= desiredPosition2.x &&
            item2.position.x+5 >= desiredPosition2.x &&
            item2.position.y-5 <= desiredPosition2.y &&
            item2.position.y+5 >= desiredPosition2.y
            let c23 = item2.position.x-5 <= desiredPosition3.x &&
            item2.position.x+5 >= desiredPosition3.x &&
            item2.position.y-5 <= desiredPosition3.y &&
            item2.position.y+5 >= desiredPosition3.y
            let c24 = item2.position.x-5 <= desiredPosition4.x &&
            item2.position.x+5 >= desiredPosition4.x &&
            item2.position.y-5 <= desiredPosition4.y &&
            item2.position.y+5 >= desiredPosition4.y
            let c25 = item2.position.x-5 <= desiredPosition5.x &&
            item2.position.x+5 >= desiredPosition5.x &&
            item2.position.y-5 <= desiredPosition5.y &&
            item2.position.y+5 >= desiredPosition5.y
            
            let c31 = item3.position.x-5 <= desiredPosition1.x &&
            item3.position.x+5 >= desiredPosition1.x &&
            item3.position.y-5 <= desiredPosition1.y &&
            item3.position.y+5 >= desiredPosition1.y
            let c32 = item3.position.x-5 <= desiredPosition2.x &&
            item3.position.x+5 >= desiredPosition2.x &&
            item3.position.y-5 <= desiredPosition2.y &&
            item3.position.y+5 >= desiredPosition2.y
            let c33 = item3.position.x-5 <= desiredPosition3.x &&
            item3.position.x+5 >= desiredPosition3.x &&
            item3.position.y-5 <= desiredPosition3.y &&
            item3.position.y+5 >= desiredPosition3.y
            let c34 = item3.position.x-5 <= desiredPosition4.x &&
            item3.position.x+5 >= desiredPosition4.x &&
            item3.position.y-5 <= desiredPosition4.y &&
            item3.position.y+5 >= desiredPosition4.y
            let c35 = item3.position.x-5 <= desiredPosition5.x &&
            item3.position.x+5 >= desiredPosition5.x &&
            item3.position.y-5 <= desiredPosition5.y &&
            item3.position.y+5 >= desiredPosition5.y
            
            let c41 = item4.position.x-5 <= desiredPosition1.x &&
            item4.position.x+5 >= desiredPosition1.x &&
            item4.position.y-5 <= desiredPosition1.y &&
            item4.position.y+5 >= desiredPosition1.y
            let c42 = item4.position.x-5 <= desiredPosition2.x &&
            item4.position.x+5 >= desiredPosition2.x &&
            item4.position.y-5 <= desiredPosition2.y &&
            item4.position.y+5 >= desiredPosition2.y
            let c43 = item4.position.x-5 <= desiredPosition3.x &&
            item4.position.x+5 >= desiredPosition3.x &&
            item4.position.y-5 <= desiredPosition3.y &&
            item4.position.y+5 >= desiredPosition3.y
            let c44 = item4.position.x-5 <= desiredPosition4.x &&
            item4.position.x+5 >= desiredPosition4.x &&
            item4.position.y-5 <= desiredPosition4.y &&
            item4.position.y+5 >= desiredPosition4.y
            let c45 = item4.position.x-5 <= desiredPosition5.x &&
            item4.position.x+5 >= desiredPosition5.x &&
            item4.position.y-5 <= desiredPosition5.y &&
            item4.position.y+5 >= desiredPosition5.y
            
            let c51 = item5.position.x-5 <= desiredPosition1.x &&
            item5.position.x+5 >= desiredPosition1.x &&
            item5.position.y-5 <= desiredPosition1.y &&
            item5.position.y+5 >= desiredPosition1.y
            let c52 = item5.position.x-5 <= desiredPosition2.x &&
            item5.position.x+5 >= desiredPosition2.x &&
            item5.position.y-5 <= desiredPosition2.y &&
            item5.position.y+5 >= desiredPosition2.y
            let c53 = item5.position.x-5 <= desiredPosition3.x &&
            item5.position.x+5 >= desiredPosition3.x &&
            item5.position.y-5 <= desiredPosition3.y &&
            item5.position.y+5 >= desiredPosition3.y
            let c54 = item5.position.x-5 <= desiredPosition4.x &&
            item5.position.x+5 >= desiredPosition4.x &&
            item5.position.y-5 <= desiredPosition4.y &&
            item5.position.y+5 >= desiredPosition4.y
            let c55 = item5.position.x-5 <= desiredPosition5.x &&
            item5.position.x+5 >= desiredPosition5.x &&
            item5.position.y-5 <= desiredPosition5.y &&
            item5.position.y+5 >= desiredPosition5.y
            
            if node == item1 && (item1.position != desiredPosition1 && item1.position !=  desiredPosition2 && item1.position != desiredPosition3 && item1.position != desiredPosition4 && item1.position != desiredPosition5) {
                item1.position = touch1
                
                if (c11 || c12 || c13 || c14 || c15) && !check && !a {
                    flag += 1
                    a = true
                    print("flag c1 \(flag) a \(a)")
                    if c11 {
                        item1.position = desiredPosition1
                    } else if c12 {
                        item1.position = desiredPosition2
                    } else if c13 {
                        item1.position = desiredPosition3
                    } else if c14 {
                        item1.position = desiredPosition4
                    } else if c15 {
                        item1.position = desiredPosition5
                    }
                    
                }
            } else if node == item2 && (item2.position != desiredPosition1 && item2.position !=  desiredPosition2 && item2.position != desiredPosition3 && item2.position != desiredPosition4 && item2.position != desiredPosition5) {
                item2.position = touch1
                
                if (c21 || c22 || c23 || c24 || c25) && !check && !b {
                    flag += 1
                    b = true
                    print("flag c2 \(flag) b \(b)")
                    if c21 {
                        item2.position = desiredPosition1
                    } else if c22 {
                        item2.position = desiredPosition2
                    } else if c23 {
                        item2.position = desiredPosition3
                    } else if c24 {
                        item2.position = desiredPosition4
                    } else if c25 {
                        item2.position = desiredPosition5
                    }
                    
                }
            } else if node == item3 && (item3.position != desiredPosition1 && item3.position !=  desiredPosition2 && item3.position != desiredPosition3 && item3.position != desiredPosition4 && item3.position != desiredPosition5) {
                item3.position = touch1
                
                if (c31 || c32 || c33 || c34 || c35) && !check && !c {
                    flag += 1
                    c = true
                    print("flag c3 \(flag) c \(c)")
                    if c31 {
                        item3.position = desiredPosition1
                    } else if c32 {
                        item3.position = desiredPosition2
                    } else if c33 {
                        item3.position = desiredPosition3
                    } else if c34 {
                        item3.position = desiredPosition4
                    } else if c35 {
                        item3.position = desiredPosition5
                    }
                    
                }
            } else if node == item4 && (item4.position != desiredPosition1 && item4.position !=  desiredPosition2 && item4.position != desiredPosition3 && item4.position != desiredPosition4 && item4.position != desiredPosition5) {
                item4.position = touch1
                
                if (c41 || c42 || c43 || c44 || c45) && !check && !d {
                    flag += 1
                    d = true
                    print("flag c1 \(flag) d \(d)")
                    if c41 {
                        item4.position = desiredPosition1
                    } else if c42 {
                        item4.position = desiredPosition2
                    } else if c43 {
                        item4.position = desiredPosition3
                    } else if c44 {
                        item4.position = desiredPosition4
                    } else if c45 {
                        item4.position = desiredPosition5
                    }
                    
                }
            } else if node == item5 && (item5.position != desiredPosition1 && item5.position !=  desiredPosition2 && item5.position != desiredPosition3 && item5.position != desiredPosition4 && item5.position != desiredPosition5) {
                item5.position = touch1
                
                if (c51 || c52 || c53 || c54 || c55) && !check && !e {
                    flag += 1
                    e = true
                    print("flag c5 \(flag) e \(e)")
                    if c51 {
                        item5.position = desiredPosition1
                    } else if c52 {
                        item5.position = desiredPosition2
                    } else if c53 {
                        item5.position = desiredPosition3
                    } else if c54 {
                        item5.position = desiredPosition4
                    } else if c55 {
                        item5.position = desiredPosition5
                    }
                    
                }
            }
            print("flag \(flag) a \(a) b \(b) c \(c) d \(d) e \(e)")
//
            if flag == 5 && !check{
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

