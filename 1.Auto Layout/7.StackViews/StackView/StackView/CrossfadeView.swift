//
//  CrossfadeView.swift
//  StackView
//
//  Created by I L H A N on 1.04.2024.
//

import UIKit

class CrossfadeView: UIView {

    init() {
        super.init(frame: .zero)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()

        addSubview(crossfadeLabel)
        addSubview(crossfadeMinLabel)
        addSubview(crossfadeMaxLabel)
        addSubview(crossfadeProgressView)

        crossfadeLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        crossfadeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32).isActive = true
        crossfadeMinLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true

        crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor).isActive = true
        crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4).isActive = true
        crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4).isActive = true

        crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor).isActive = true
        crossfadeMaxLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 300, height: 100)
    }

}
