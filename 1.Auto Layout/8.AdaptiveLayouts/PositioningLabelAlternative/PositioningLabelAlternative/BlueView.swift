//
//  BlueView.swift
//  PositioningLabelAlternative
//
//  Created by I L H A N on 07.04.2024.
//

import UIKit

class BlueView: UIView {

    //
    // By capturing this constraints as variables, we can enable/disable them
    // later based on our devices orientation.
    //

    let topSpacer = makeSpacerView(height: 100)
    let bottomSpacer = makeSpacerView(height: 100)

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        backgroundColor = .blue
        topSpacer.backgroundColor = .white
        bottomSpacer.backgroundColor = .white

        let label = makeLabel(withText: "Adjusting via spacers", size: 24)
        let stackView = makeStackView(withOrientation: .vertical)

        stackView.addArrangedSubview(topSpacer)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(bottomSpacer)

        addSubview(stackView)

        topSpacer.heightAnchor.constraint(equalTo: bottomSpacer.heightAnchor).isActive = true

        stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true

        // for padding and spacing
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)

        adjustConstraints()
    }

    func adjustConstraints() {
        if UIApplication.shared.statusBarOrientation.isPortrait {
            topSpacer.isHidden = true
            bottomSpacer.isHidden = true
        } else {
            topSpacer.isHidden = false
            bottomSpacer.isHidden = false
        }
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }

}
