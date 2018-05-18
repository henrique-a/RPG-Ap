//
//  Element.swift
//  NanoChallengeApp2
//
//  Created by Ada 2018 on 18/05/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class Element: NSObject {
	var name: String
	var image: UIImage
	var elementDescription: String
	var features: [(String, UIImage)]
	init(name: String, image: UIImage, description: String,features: [(String, UIImage)]) {
		self.image = image
		self.name = name
		self.elementDescription = description
		self.features = features
	}
}
