//
//  CustomView.swift
//  CustomView
//
//  Created by I L H A N on 1.04.2024.
//

import UIKit

class CustomView: UIViewController {

    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }

    
    func setupViews() {
        let offlineRow = RowView(title: "Offline", isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let crossfadeView = CrossfadeView()

        let gaplessRow = RowView(title: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(title: "Hide Unplayable Songs", isOn: true)
        let normalizationRow = RowView(title: "Enable Audio Normalization", isOn: true)

        offlineRow.translatesAutoresizingMaskIntoConstraints = false
        crossfadeView.translatesAutoresizingMaskIntoConstraints = false
        gaplessRow.translatesAutoresizingMaskIntoConstraints = false
        hideSongsRow.translatesAutoresizingMaskIntoConstraints = false
        normalizationRow.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(offlineRow)
        view.addSubview(offlineSublabel)
        view.addSubview(crossfadeView)

        view.addSubview(gaplessRow)
        view.addSubview(hideSongsRow)
        view.addSubview(normalizationRow)
        
        offlineRow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
        offlineRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        offlineRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        offlineSublabel.topAnchor.constraint(equalTo: offlineRow.bottomAnchor, constant: margin).isActive = true
        offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true

        crossfadeView.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: margin).isActive = true
        crossfadeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        crossfadeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        gaplessRow.topAnchor.constraint(equalTo: crossfadeView.bottomAnchor, constant: margin).isActive = true
        gaplessRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        gaplessRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
        
        hideSongsRow.topAnchor.constraint(equalTo: gaplessRow.bottomAnchor, constant: margin).isActive = true
        hideSongsRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        hideSongsRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true

        normalizationRow.topAnchor.constraint(equalTo: hideSongsRow.bottomAnchor, constant: margin).isActive = true
        normalizationRow.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        normalizationRow.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin).isActive = true
    }
}
