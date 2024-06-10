//
//  ProgressRow.swift
//  WithSpacers
//
//  Created by I L H A N on 08.04.2024.
//

import UIKit

class ProgressRow: UIView {
    
    init() {
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "6:03")
        let progressView = makeProgressView()
        
        addSubview(playButton)
        addSubview(previewStartLabel)
        addSubview(previewEndLabel)
        addSubview(progressView)
        
        playButton.topAnchor.constraint(equalTo: topAnchor).isActive = true
        playButton.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        
        previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8).isActive = true
        
        progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 8).isActive = true
        
        previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor).isActive = true
        previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: 8).isActive = true
        previewEndLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: buttonHeight)
    }
}
