//
//  CommonCollectionView.swift
//  SberCollectionView
//
//  Created by MikhaiL on 03.05.2023.
//

import UIKit

final class CommonCollectionView: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet private var iconImage: UIImageView!
    @IBOutlet private var textLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.cornerRadius = 16
    }
    
    // MARK: - Public methods
    func setupCommonCell(icon: UIImage, text: String) {
        iconImage.image = icon
        textLabel.text = text
    }
}
