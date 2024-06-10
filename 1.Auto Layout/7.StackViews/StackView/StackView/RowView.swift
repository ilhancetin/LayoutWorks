//
//  RowView.swift
//  StackView
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

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        let titleLabel = makeLabel(withText: title)
        let onOffSwitch = makeSwitch(isOn: isOn)

        addSubview(titleLabel)
        addSubview(onOffSwitch)

        // Everything flush to edges...
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true

        onOffSwitch.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwitch.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
    }

    // A suggestion about size. But one that can be overridden.
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }

}
