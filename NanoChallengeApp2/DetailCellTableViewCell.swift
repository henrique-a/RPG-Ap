
import UIKit

class DetailCellTableViewCell: UITableViewCell {

	@IBOutlet weak var detailCellImage: UIImageView!
	@IBOutlet weak var detailCellText: UITextView!
	
	override func awakeFromNib() {
        super.awakeFromNib()
		
		detailCellImage.layer.masksToBounds = false
		detailCellImage.layer.cornerRadius = detailCellImage.frame.size.width/2
		detailCellImage.clipsToBounds = true
    }
}
