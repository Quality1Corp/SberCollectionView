//
//  ButtonCollectionViewCell.swift
//  SberCollectionView
//
//  Created by MikhaiL on 03.05.2023.
//

import UIKit

final class ButtonCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet private var topButton: UIButton!
    @IBOutlet private var bottomButton: UIButton!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        topButton.layer.cornerRadius = 16
        bottomButton.layer.cornerRadius = 16
    }
    
    // MARK: - Public methods
    func setupButtonCell(topImage: UIImage?, bottomImage: UIImage?) {
        topButton.setImage(topImage, for: .normal)
        bottomButton.setImage(bottomImage, for: .normal)
    }
}
