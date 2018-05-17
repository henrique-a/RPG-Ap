
import UIKit

class DetailsViewController: UIViewController {
	
	@IBOutlet weak var detailsImage: UIImageView!
	@IBOutlet weak var detailsText: UITextView!
	@IBOutlet weak var detailsTableView: UITableView!
	
	struct Skill {
		
		var name: String
		var icon: UIImage
		
		init (name: String, icon: UIImage) {
			
			self.name = name
			self.icon = icon
		}
	}
	
	var skill = [Skill]()
	
	override func viewDidLoad() {
		
        super.viewDidLoad()
		
		detailsTableView.delegate = self
		detailsTableView.dataSource = self
    }
}

extension DetailsViewController: UITableViewDataSource, UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		<#code#>
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = detailsTableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as! DetailCellTableViewCell
		
		cell.detailCellImage.image = #imageLiteral(resourceName: "sonic")
	}
}
