//
//  SberViewController.swift
//  SberCollectionView
//
//  Created by MikhaiL on 03.05.2023.
//

import UIKit

final class SberViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet private var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        
        let buttonCellNib = UINib(nibName: "ButtonCell", bundle: nil)
        collectionView.register(buttonCellNib, forCellWithReuseIdentifier: "ButtonCell")
        
        let commonCellNib = UINib(nibName: "CommonCell", bundle: nil)
        collectionView.register(commonCellNib, forCellWithReuseIdentifier: "CommonCell")
    }


}

// MARK: - UICollectionViewDataSource
extension SberViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.item {
            case 0:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ButtonCell", for: indexPath) as! ButtonCollectionViewCell
                
                cell.setupButtonCell(topImage: UIImage(systemName: "qrcode.viewfinder"), bottomImage: UIImage(systemName: "plus.circle"))
                return cell
            default:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommonCell", for: indexPath) as! CommonCollectionView
                
                cell.setupCommonCell(icon: UIImage(systemName: "applewatch")!, text: "Let's check our new story")
                return cell
        }
    }
}
