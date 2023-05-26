//
//  Level2.swift
//  MoveIt
//
//  Created by Angela Valentine Darmawan on 23/05/23.
//

import SpriteKit

class Level2: SKShapeNode {
    override init() {
        super.init()
        path = UIBezierPath(roundedRect: CGRect(x: -45, y: -45, width: 90, height: 90), cornerRadius: 15).cgPath
        fillColor = .clear
        strokeColor = .white
    }

    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}
