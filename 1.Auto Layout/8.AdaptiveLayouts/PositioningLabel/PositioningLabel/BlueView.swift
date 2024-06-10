//
//  BlueView.swift
//  PositioningLabel
//
//  Created by I L H A N on 6.04.2024.
//

import UIKit

class BlueView: UIView {
    
    var topAnchorConstraint = NSLayoutConstraint()
    var centerYAnchorConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .blue
        
        let label = makeLabel(withText: "Adjusting constraints", size: 24)
        
        addSubview(label)
        
        // Static constraints
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        // Dynamic constraints
        topAnchorConstraint = label.topAnchor.constraint(equalTo: topAnchor, constant: 8)
        centerYAnchorConstraint = label.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        adjustConstraints()
    }
    
    func adjustConstraints() {
        if UIApplication.shared.statusBarOrientation.isPortrait {
            topAnchorConstraint.isActive = true
            centerYAnchorConstraint.isActive = false
        } else {
            topAnchorConstraint.isActive = false
            centerYAnchorConstraint.isActive = true        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
