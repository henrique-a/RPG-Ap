
import UIKit

class DetailsViewController: UIViewController {
	
	@IBOutlet weak var detailsImage: UIImageView!
	@IBOutlet weak var detailsText: UITextView!
	@IBOutlet weak var detailsTableView: UITableView!
	
	var element: Element?

	override func viewDidLoad() {
		
        super.viewDidLoad()
		detailsTableView.delegate = self
		detailsTableView.dataSource = self
		detailsImage.image = element?.image
		detailsText.text = element?.elementDescription
		detailsImage.layer.masksToBounds = false
		detailsImage.layer.cornerRadius = self.detailsImage.frame.size.width/2
		detailsImage.clipsToBounds = true
		
    }
}

extension DetailsViewController: UITableViewDataSource, UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		if let element = element {
			return element.features.count
		}
		return 0
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 120
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = detailsTableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailCellTableViewCell
		
		cell.name.text = element?.features[indexPath.row].0
		cell.cellImage.image = element?.features[indexPath.row].1
		
		return cell
	}
}
