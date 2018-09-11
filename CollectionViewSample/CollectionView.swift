//
//  CollectionView.swift
//  CollectionViewSample
//
//  Created by Tamura-hd on 2018/03/10.
//  Copyright © 2018 hirukado-design. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class CollectionView: UICollectionView,
                            UICollectionViewDataSource,
                            UICollectionViewDelegate,
                            UICollectionViewDelegateFlowLayout {

    var skView = SKView()
    
    // Screen size ratio
    var sceneWidthRatio: CGFloat = 0.0
    var sceneHeightRatio: CGFloat = 0.0
    
    var CollectionViewHeader = SKShapeNode()
    
    var cellBackgroundColorSave: UIColor!
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.delegate = self
        self.dataSource = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // Number of sections
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    // Number of cells
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }

    // Cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCustomCell
        cell.backgroundColor = UIColor.blue

        // Cell index + 1
        cell.textLabel.text = "\(indexPath.row + 1)"

        // Setting cell round corner
        cell.layer.cornerRadius = 10 * sceneWidthRatio
        cell.layer.masksToBounds = true

        return cell
    }

    // Cell size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = self.frame.width * 0.45
        let height: CGFloat = self.frame.height * 0.3
        return CGSize(width: width, height: height)
    }

    // CollectionView margin
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(5, 10, 5, 10)
    }

    // Cell horizontal margin
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    // Cell vertical margin
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }

    // Cell selected
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected")
    }

    // Cell highlight on
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        // Remember the background color before change
        cellBackgroundColorSave = cell?.backgroundColor
        // Change background color
        cell?.backgroundColor = UIColor.white
    }
    
    // Cell highlight off
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        // wait
        let dispatchTime: DispatchTime = DispatchTime.now() + Double(Int64(0.3 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: dispatchTime, execute: {
            // Restore cell background color
            cell?.backgroundColor = self.cellBackgroundColorSave
        })
    }

}
