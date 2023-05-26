//
//  Shape1.swift
//  MoveIt
//
//  Created by Angela Valentine Darmawan on 22/05/23.
//

import SpriteKit

class Level1: SKShapeNode {
    
    override init() {
        super.init()
        path = UIBezierPath(ovalIn: CGRect(x: -45, y: -45, width: 90, height: 90)).cgPath
        fillColor = UIColor.clear
        strokeColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}
