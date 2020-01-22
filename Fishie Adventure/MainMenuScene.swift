//
//  MainMenuScene.swift
//  Fishie Adventure
//
//  Created by Allan Che on 2020-01-06.
//  Copyright © 2020 Allan Che. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene : SKScene {
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "ocean.")
        background.alpha = 0.2
        background.size = size
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = 0
        addChild(background)
          
        let welcome = SKLabelNode(fontNamed: "Lato-Medium")
        welcome.text = "Welcome To Fishie Adventure!"
        welcome.fontSize = 0.05*self.size.width
        welcome.fontColor = SKColor.white
        welcome.position = CGPoint(x: size.width*0.5, y: size.height*0.7)
        welcome.zPosition = 1
        addChild(welcome)
        
        let tapPrompt = SKLabelNode(fontNamed: "Lato-Medium")
        tapPrompt.text = "Tap Anywhere to Start"
        tapPrompt.fontSize = 0.04*self.size.width
        tapPrompt.fontColor = SKColor.white
        tapPrompt.position = CGPoint(x: size.width*0.5, y: size.height*0.4)
        tapPrompt.zPosition = 1
        addChild(tapPrompt)
        
        let instructions = SKLabelNode(fontNamed: "Lato-Medium")
        instructions.text = "Tap and Drag to Move! Eat Smaller Fish and Avoid Being Eaten!"
        instructions.fontSize = 0.02*self.size.width
        instructions.fontColor = SKColor.white
        instructions.position = CGPoint(x: size.width*0.5, y: size.height*0.2)
        instructions.zPosition = 1
        addChild(instructions)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let game = GameScene(size: size)
        let fade = SKTransition.fade(withDuration: 0.5)
        view?.presentScene(game, transition: fade)
    }
    
}
