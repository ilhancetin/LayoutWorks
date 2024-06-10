//
//  PlayerView.swift
//  WithSpacers
//
//  Created by I L H A N on 08.04.2024.
//

import UIKit

class PlayerView: UIView {
    
    var topSpacer: UIView
    var bottomSpacer: UIView
    
    init() {
        topSpacer = makeSpacerView(height: 100)
        topSpacer.backgroundColor = .yellow
        bottomSpacer = makeSpacerView(height: 100)
        bottomSpacer.backgroundColor = .blue
        
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.distribution = .fillProportionally
        
        let trackLabel = makeTrackLabel(withText: "Queen")
        let albumLabel = makeAlbumLabel(withText: "Bohemien Rhapsody • Ma Ma Mia (Album)")
        let playerView = ProgressRow()
        let spotifyButtonView = makeSpotifyButtonCustomView()
        
        addSubview(stackView)
        
        stackView.addArrangedSubview(topSpacer)
        stackView.addArrangedSubview(trackLabel)
        stackView.addArrangedSubview(albumLabel)
        stackView.addArrangedSubview(playerView)
        stackView.addArrangedSubview(spotifyButtonView)
        stackView.addArrangedSubview(bottomSpacer)
        
        topSpacer.heightAnchor.constraint(equalTo: bottomSpacer.heightAnchor).isActive = true
        
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    func makeSpotifyButtonCustomView() -> UIView {
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        container.addSubview(spotifyButton)
        
        spotifyButton.centerXAnchor.constraint(equalTo: container.centerXAnchor).isActive = true
        spotifyButton.centerYAnchor.constraint(equalTo: container.centerYAnchor).isActive = true
        spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true

        return container
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 200)
    }
    
    func adjustForOrientation() {
        if UIDevice.current.orientation.isLandscape{
            topSpacer.isHidden = false
            bottomSpacer.isHidden = false
        } else {
            topSpacer.isHidden = true
            bottomSpacer.isHidden = true
        }
    }
}
