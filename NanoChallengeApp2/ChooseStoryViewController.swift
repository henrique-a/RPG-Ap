
import UIKit

class ChooseStoryViewController: UIViewController {
	
	@IBOutlet weak var collectionView: UICollectionView!
	
	let stories: [Story]  = [Story.init(icon: #imageLiteral(resourceName: "sword"), iconName: "Sword", image: #imageLiteral(resourceName: "sword-image"), storyDescription: "Espada"),
							 Story.init(icon: #imageLiteral(resourceName: "shield"), iconName: "Shield", image: UIImage(), storyDescription: "Escudo"),
							 Story.init(icon: #imageLiteral(resourceName: "axe"), iconName: "Axe", image: UIImage(), storyDescription: "Machado"),
							 Story.init(icon: #imageLiteral(resourceName: "spear"), iconName: "Spear", image: UIImage(), storyDescription: "Lança"),
							 Story.init(icon: #imageLiteral(resourceName: "skull"), iconName: "Skull", image: UIImage(), storyDescription: "Caveira"),
							 Story.init(icon: #imageLiteral(resourceName: "laser-gun"), iconName: "Laser Gun", image: UIImage(), storyDescription: "Arma laser")]
	
	override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
		collectionView.dataSource = self
    }
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "showStory" {
			let storyViewController = segue.destination as! StoryViewController
			let story: Story = stories[(collectionView.indexPath(for: sender as! UICollectionViewCell)?.row)!]
			storyViewController.story = story
		}
	}
	
}

extension ChooseStoryViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return stories.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "storyCell", for: indexPath) as! StoryCell
		cell.icon.image = stories[indexPath.row].icon
		cell.iconName.text = stories[indexPath.row].iconName
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		let screenSize = UIScreen.main.bounds
		let screenWidth = screenSize.size.width
		let cellWidth = screenWidth/4.0
		let size = CGSize(width: cellWidth, height: cellWidth)
		
		return size
	}
}
