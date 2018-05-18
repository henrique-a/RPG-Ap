
import UIKit

class DetailCellTableViewCell: UITableViewCell {

	@IBOutlet weak var cellImage: UIImageView!
	@IBOutlet weak var name: UILabel!
	@IBOutlet weak var featureDescription: UITextView!
	
	override func awakeFromNib() {
        super.awakeFromNib()
		
		cellImage.layer.masksToBounds = false
		cellImage.layer.cornerRadius = cellImage.frame.size.width/2
		cellImage.clipsToBounds = true
		
		name.sizeToFit()
    }
}
