//
//  Story.swift
//  NanoChallengeApp2
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class Story: NSObject {
	
//	struct Element: Equatable {
//
//		var name: String
//		var image: UIImage
//
//		init(name: String, image: UIImage) {
//			self.image = image
//			self.name = name
//		}
//
//		static func == (lhs: Story.Element, rhs: Story.Element) -> Bool {
//			return lhs.name == rhs.name
//		}
//	}
	
	enum Elements: Int {
		case NPC = 0
		case dungeon = 1
		case item = 2
	}
	
	var icon: UIImage
	var iconName: String
	static var image: UIImage = #imageLiteral(resourceName: "medieval-landscape1")
	static var storyDescription: String = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
	var NPCs: [NPC] = [NPC(name: "Rei", image: #imageLiteral(resourceName: "Rei"), description: "Rei", features: [("Skill", #imageLiteral(resourceName: "Item-Bag-icon"))]), NPC(name: "Orc", image: #imageLiteral(resourceName: "Orc-icon"), description: "Orc", features: [("Skill", #imageLiteral(resourceName: "Werewolf-icon"))]), NPC(name: "Bruxa", image: #imageLiteral(resourceName: "Bruxa"), description: "Bruxa", features: [("skill", #imageLiteral(resourceName: "Destructive-Magic-icon"))])]
	var dungeons: [Dungeon] = []
	var items: [Item] = []
	var elements = [Int: [Element]]()
	var addedElements = [Element]()
	
	init(icon: UIImage, iconName: String, image: UIImage, storyDescription: String) {
		self.icon = icon
		self.iconName = iconName
		
		elements[Elements.NPC.rawValue] = self.NPCs
		elements[Elements.dungeon.rawValue] = self.dungeons
		elements[Elements.item.rawValue] = self.items
	}
}
