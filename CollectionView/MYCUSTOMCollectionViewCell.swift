//
//  MYCUSTOMCollectionViewCell.swift
//  CollectionView
//
//  Created by Juan Bonforti on 11/07/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class MYCUSTOMCollectionViewCell: UICollectionViewCell {

    // MARK: IBActions
    @IBOutlet weak var myFirstLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!

    // MARK: Private Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        backgroundColor = .lightGray
        myFirstLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myFirstLabel.textColor = .blue
    }

}
