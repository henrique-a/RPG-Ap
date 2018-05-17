//
//  Story.swift
//  NanoChallengeApp2
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class Story: NSObject {
	
	struct Element: Equatable {
		
		var name: String
		var image: UIImage
		
		init(name: String, image: UIImage) {
			self.image = image
			self.name = name
		}
		
		static func ==(lhs: Story.Element, rhs: Story.Element) -> Bool {
			return lhs.name == rhs.name
		}
	}
	
	enum Elements: Int {
		case NPC = 0
		case dungeon = 1
		case item = 2
	}
	
	var icon: UIImage
	var iconName: String
	var image: UIImage?
	var storyDescription: String
	var NPCs: [Element] = [Element(name: "Sonic", image: #imageLiteral(resourceName: "smallville")), Element(name: "Star Wars", image: #imageLiteral(resourceName: "star-wars"))]
	var dungeons: [Element] = []
	var items: [Element] = []
	var elements = [Int: [Element]]()
	var addedElements = [Element]()
	
	init(icon: UIImage, iconName: String, image: UIImage, storyDescription: String) {
		self.icon = icon
		self.iconName = iconName
		self.image = image
		self.storyDescription = storyDescription
		
		elements[Elements.NPC.rawValue] = self.NPCs
		elements[Elements.dungeon.rawValue] = self.dungeons
		elements[Elements.item.rawValue] = self.items
	}
}
