//
//  RowView.swift
//  CustomView
//
//  Created by I L H A N on 1.04.2024.
//

import UIKit

class RowView: UIView {
    
    var title: String
    var isOn: Bool
    
    init(title: String, isOn: Bool) {
        self.title = title
        self.isOn = isOn
        
        super.init(frame: .zero)
        
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        let titleLabel = makeLabel(withText: title)
        let onOffSwitch = makeSwitch(isOn: isOn)
        
        addSubview(titleLabel)
        addSubview(onOffSwitch)
        
        onOffSwitch.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwitch.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
        
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
}
