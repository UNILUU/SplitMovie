//
//  NoSelectViewController.swift
//  SearchMovie
//
//  Created by Xiaolu on 3/14/19.
//

import UIKit

class NoSelectViewController: UIViewController {
    let noSelect : UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.font = UIFont.boldSystemFont(ofSize: labelFontTitle)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = navigationController?.splitViewController?.displayModeButtonItem
        self.navigationItem.leftItemsSupplementBackButton = true
        
        self.view.backgroundColor = UIColor.white
        noSelect.text = "Please make a selection"
        
        self.view.addSubview(noSelect)

        NSLayoutConstraint .activate([
            self.view.centerXAnchor.constraint(equalTo: noSelect.centerXAnchor),
            self.view.centerYAnchor.constraint(equalTo: noSelect.centerYAnchor)
            ])
        
    }
    


}
