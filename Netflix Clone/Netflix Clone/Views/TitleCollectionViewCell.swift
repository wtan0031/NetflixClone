//
//  TitleCollectionViewCell.swift
//  Netflix Clone
//
//  Created by Wei Liang Tan on 12/03/2022.
//

import UIKit
// Third party library
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TitleCollectionViewCell"
    
    private let posterImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    // using the third party library to help us cache the image of the
    // retrived poster from the internet
    // each time we dequeue a cell in our collection view
    // we need to have an update func , to update the poster for each cell
    // with the models in the home view controllers
    
    public func configure(with model: String) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else {return}
        posterImageView.sd_setImage(with: url, completed: nil)
    }
    
}
