//
//  AdventureViewController.swift
//  NanoChallengeApp2
//
//  Created by Ada 2018 on 18/05/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class AdventureViewController: UIViewController {
	
	var story: Story?
	
	@IBOutlet weak var image: UIImageView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		self.image.image = Story.image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
