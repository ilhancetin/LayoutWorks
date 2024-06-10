//
//  PositioningLabelAlternative.swift
//  PositioningLabelAlternative
//
//  Created by I L H A N on 07.04.2024.
//

import UIKit

///
/// This example shows how different views can be supported by the use of spacers.
/// Here the spacers are hidden when the view is in portrait.
/// And made visiable when in landscape.

class PositioningLabelAlternative: UIViewController {

    var stackView = makeStackView(withOrientation: .vertical)
    let blueView = BlueView()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        registerForOrientationChanges()
        setupViews()
    }

    func registerForOrientationChanges() {
        NotificationCenter.default.addObserver(self, selector: #selector(PositioningLabelAlternative.rotated), name: UIDevice.orientationDidChangeNotification, object: nil)
    }

    func setupViews() {
        navigationItem.title = "Adjust Constraints"

        let yellowView = YellowView()

        stackView.addArrangedSubview(yellowView)
        stackView.addArrangedSubview(blueView)

        view.addSubview(stackView)

        yellowView.heightAnchor.constraint(equalTo: blueView.heightAnchor).isActive = true
        yellowView.widthAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true

        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }

    @objc func rotated() {
        blueView.adjustConstraints()

        if UIDevice.current.orientation.isLandscape {
            stackView.axis = .horizontal
        } else {
            stackView.axis = .vertical
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
