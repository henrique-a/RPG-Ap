//
//  StoryViewController.swift
//  NanoChallengeApp2
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
	
	

	@IBOutlet weak var tableView: UITableView!
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var storyDescription: UITextView!
	
	
	var story: Story?
	let titles = ["NPCs", "Dungeons", "Items"]
	var selectedElement: Element?
	override func viewDidLoad() {
        super.viewDidLoad()
		self.imageView.image = Story.image
		self.storyDescription.text = Story.storyDescription
		
		
		self.tableView.delegate = self
		self.tableView.dataSource = self
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	@IBAction func createAdventury(_ sender: UIButton) {
		
		let alert = UIAlertController(title: "Sua aventura foi criada!", message: "Ela foi amarzenada na tela de aventuras", preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert: UIAlertAction!) in
			self.navigationController?.popToRootViewController(animated: true)
		}))
		self.present(alert, animated: true)
	}
	
}

extension StoryViewController: UITableViewDelegate, UITableViewDataSource {
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 3
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		return (self.story!.elements[section]?.count)!
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return titles[section]
	}
	
//	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//		let view = UIView()
//		view.backgroundColor = UIColor.lightGray
//		let title = UILabel()
//		title.text = titles[section]
//		title.frame = CGRect(x: view.frame.midX, y: view.frame.midY, width: view.frame.width, height: 30)
//		view.addSubview(title)
//		return view
//
//	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let element = self.story?.NPCs[indexPath.row]
		let cell = tableView.dequeueReusableCell(withIdentifier: "elementCell", for: indexPath) as! ElementCell
		cell.elementImage.image = element?.image
		cell.name.text = element?.name
		cell.delegate = self
		
		
		
		return cell
	}
}

extension StoryViewController: ElementCellDelegate {
	
	
	func showDetails(_ sender: ElementCell) {
		let section = (tableView.indexPath(for: sender)?.section)
		let row = (tableView.indexPath(for: sender)?.row)
		let array = self.story?.elements[section!]
		let element = array![row!]
		self.selectedElement = element
		performSegue(withIdentifier: "showDetails", sender: Any?.self)
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "showDetails" {
			let DetailsVC = segue.destination as! DetailsViewController
			DetailsVC.element = self.selectedElement
		}
	}
	
	func removeElement(_ sender: ElementCell) {
		let section = (tableView.indexPath(for: sender)?.section)
		let row = (tableView.indexPath(for: sender)?.row)
		let array = self.story?.elements[section!]
		let element = array![row!]
		if let index = self.story?.addedElements.index(of: element) {
			self.story?.addedElements.remove(at: index)
		}
	}
	
	func addElement(_ sender: ElementCell) {
		let section = (tableView.indexPath(for: sender)?.section)
		let row = (tableView.indexPath(for: sender)?.row)
		self.story?.addedElements.append((self.story?.elements[section!]![row!])!)
	}
	
	
}
