//
//  ChooseHistoryViewController.swift
//  NanoChallengeApp2
//
//  Created by Ada 2018 on 15/05/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit

class ChooseHistoryViewController: UIViewController {

	@IBOutlet weak var collectionView: UICollectionView!
	override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
		collectionView.dataSource = self
		
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


extension ChooseHistoryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
	
}
