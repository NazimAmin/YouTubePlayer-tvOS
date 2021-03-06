//
//  VideosCollectionViewCell.swift
//  StarcraftWatch
//
//  Created by Thibault Klein on 9/14/15.
//  Copyright © 2015 Prolific Interactive. All rights reserved.
//

import UIKit

class VideosCollectionViewCell: UICollectionViewCell {

    static let identifier = "VideoCollectionViewCell"

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoDescriptionLabel: UILabel!

    override func awakeFromNib() {
        // Enable parallax effect on the UIImageView when user has the focus on the cell
        self.videoImageView.adjustsImageWhenAncestorFocused = true
    }

    func setup(_ video: Video) {
        self.videoImageView.imageFromUrl(video.thumbnailURL)
        self.videoDescriptionLabel.text = video.name
    }
        
}
