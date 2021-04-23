//
//  PlatformBox.swift
//  bingCsBros
//
//  Created by Binghamton Dev on 4/20/21.
//

import UIKit
import SpriteKit

class PlatformBox: SKSpriteNode {
    var isQuestion: Bool!
    var img: String!
    init(x:Int, y:Int, isQ:Bool) {
        isQuestion = isQ
        if(isQuestion == true) {
            img = "stickFigure"
        }
        else {
            img = "stickFigure"
        }
        let texture = SKTexture(imageNamed: img)
        super.init(texture: texture, color: UIColor.clear, size: texture.size())
        self.position = CGPoint(x: x, y: y)
        self.size.height = 20
        self.size.width = 20
        self.zPosition = 1
        self.name = "Platform"
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.width / 2)
        self.physicsBody?.isDynamic = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    //QuestionBox Interaction functions
}
