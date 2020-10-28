//
//  Shop.swift
//  Candy-Commerce
//
//  Created by Christian Elijah on 2020-08-31.
//  Copyright © 2020 Christian Elijah. All rights reserved.
//

import UIKit

private let reuseIdentifier = "shopCell"

struct customCandyData {
    var title: String
    var image: UIImage
}

class Shop: UICollectionViewController {
    
    
    
    let candyData = [
        customCandyData(title: "M&M", image: #imageLiteral(resourceName: "robert-anasch-pzdl6P4Lk60-unsplash")),
        customCandyData(title: "M&M", image: #imageLiteral(resourceName: "jamie-albright-AHF_ZktTL6Q-unsplash")),
        customCandyData(title: "M&M", image: #imageLiteral(resourceName: "sharon-mccutcheon-SGI0i5sHCL8-unsplash")),
        customCandyData(title: "M&M", image: #imageLiteral(resourceName: "june-gathercole-j07KEb81xa4-unsplash")),
        customCandyData(title: "M&M", image: #imageLiteral(resourceName: "vishnu-mk-7-Kg9PLwufA-unsplash")),
        customCandyData(title: "M&M", image: #imageLiteral(resourceName: "taylor-rooney-dFC80hmTOoE-unsplash")),
        customCandyData(title: "M&M", image: #imageLiteral(resourceName: "liliana-olivares-g56O5L0ZVmg-unsplash")),
        customCandyData(title: "M&M", image: #imageLiteral(resourceName: "6e295f26684a72f3e0873dc27261ab89"))
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Layout
        layoutSection()
        
        
        // Register Xib/Nib File
        let xibName = UINib(nibName: "ShopCell", bundle: nil)
        xibName.instantiate(withOwner: self, options: nil)
        collectionView.register(xibName, forCellWithReuseIdentifier: "shopCell")
        // Constraints
        
    }
    
    func layoutSection() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.register(ShopCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return candyData.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ShopCell
        cell.candyData = self.candyData[indexPath.row]
        return cell
    }
}

// Custom Cell

