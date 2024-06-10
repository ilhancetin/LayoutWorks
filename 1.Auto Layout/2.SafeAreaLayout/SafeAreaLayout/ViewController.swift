//
//  ViewController.swift
//  SafeAreaLayout
//
//  Created by I L H A N on 14.03.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        let topLabel = makeLabel(withText: "top")
        let bottomLabel = makeLabel(withText: "bottom")
        let leadingLabel = makeLabel(withText: "left")
        let trailingLabel = makeLabel(withText: "right")
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        NSLayoutConstraint.activate([
            
        topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
        bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        leadingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        
        trailingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 4),
        trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 4)
    
        ])
    }

    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 32)
        
        return label
    }

}

