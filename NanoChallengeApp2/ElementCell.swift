//
//  ElementCell.swift
//  NanoChallengeApp2
//
//  Created by Ada 2018 on 16/05/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class ElementCell: UITableViewCell {

	
	@IBOutlet weak var button: UIButton!
	@IBOutlet weak var elementImage: UIImageView!
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var check: UIImageView!
	var delegate: ElementCellDelegate?
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
		self.elementImage.layer.masksToBounds = false
		self.elementImage.layer.cornerRadius = self.elementImage.frame.size.width/2
		self.elementImage.clipsToBounds = true
		self.check.isHidden = true
    }
	
	

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

	@IBAction func add(_ sender: UIButton) {
		if 	self.check.isHidden {
			self.check.isHidden = false
			self.button.setImage(#imageLiteral(resourceName: "minus"), for: .normal)
			delegate?.addElement(self)
		} else {
			self.check.isHidden = true
			self.button.setImage(#imageLiteral(resourceName: "plus"), for: .normal)
			delegate?.removeElement(self)
		}
	}
	
	
}
