//
//  ViewController.swift
//  AnchorsLayout
//
//  Created by I L H A N on 7.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
    }

    func setupViews() {
        let upperLeftLabel = makeLabel(withText: "TopLeft")
        let upperRightLabel = makeLabel(withText: "TopRight")
        let lowerLeftLabel = makeLabel(withText: "BottomLeft")
        let button = makeButton(withText: "Next")
        let grayView = makeView()
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRightLabel)
        view.addSubview(lowerLeftLabel)
        view.addSubview(button)
        view.addSubview(grayView)
        
        upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        upperRightLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        upperRightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        lowerLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        lowerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        
        grayView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        grayView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
//        Option 1: Size explicity
//        grayView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        grayView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
//        Option 2: Size dynamically (pinning)
        grayView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        grayView.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -20).isActive = true
        
        grayView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        grayView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
        
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .yellow
        label.text = text
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = .gray
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .blue
        
        return button
    }

    func makeView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        
        return view
    }
}

