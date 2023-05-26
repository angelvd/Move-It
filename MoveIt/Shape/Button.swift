//
//  Button.swift
//  MoveIt
//
//  Created by Angela Valentine Darmawan on 23/05/23.
//

import SpriteKit

class Button: SKShapeNode {
    override init() {
        super.init()
        fillColor = UIColor.secondaryLabel
        strokeColor = UIColor.black
    }
    
    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}
