//
//  AlbumViewCell.swift
//  VirtualTourist
//
//  Created by Aditya Rana on 06.10.20.
//

import UIKit

class AlbumViewCell: UICollectionViewCell {

    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView! {
        didSet {
            activityIndicator.hidesWhenStopped = true
            activityIndicator.startAnimating()
        }
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    // MARK: - Lifecycle
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = UIImage()
        activityIndicator.startAnimating()
    }
    
    // MARK: - Configuration Functions
    
    func configureWith(_ imageData: Data) {
        imageView.isHidden = false
        imageView.image = UIImage(data: imageData)
        activityIndicator.stopAnimating()
    }
    
    func configureWithNoImage() {
        activityIndicator.stopAnimating()
    }

}
