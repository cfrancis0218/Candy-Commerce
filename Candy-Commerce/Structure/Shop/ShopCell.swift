//
//  ShopCell.swift
//  Candy-Commerce
//
//  Created by Christian Elijah on 2020-08-31.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit


class ShopCell: UICollectionViewCell {
    
    @IBOutlet var buyButton: UIButton!
    @IBOutlet var candyImage: UIImageView!
    
    var candyData: customCandyData? {
        didSet {
            guard let candyData = candyData else { return }
            candiesImage.image = candyData.image
        }
    }
    
    var candiesImage: UIImageView = {
        let candyImage = UIImageView()
        candyImage.translatesAutoresizingMaskIntoConstraints = false
        candyImage.contentMode = .scaleAspectFill
        candyImage.clipsToBounds = true
        candyImage.layer.cornerRadius = 8
        return candyImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(candiesImage)
        // Constraints
        candiesImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        candiesImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        candiesImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        candiesImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

