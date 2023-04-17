//
//  ViewController.swift
//  Anchors
//
//  Created by Ganesh on 17/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Anchors demo")
        
        setupViews()
    }

    func setupViews() {
        let upperLeftLabel = makeLabel(withText: "Upper Left Label")
        
        view.addSubview(upperLeftLabel)
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        
        let upperRightLabel = makeLabel(withText: "Upper Right Label")
        view.addSubview(upperRightLabel)
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        label.text = text
        
        return label
    }
}

