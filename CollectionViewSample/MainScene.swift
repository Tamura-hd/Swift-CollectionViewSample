//
//  MainScene.swift
//  CollectionViewSample
//
//  Created by Tamura-hd on 2018/03/11.
//  Copyright © 2018 hirukado-design. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class MainScene: SKScene {

    /// Scene width ratio
    var sceneWidthRatio: CGFloat = 0.0
    /// Scene Height ratio
    var sceneHeightRatio: CGFloat = 0.0

    override func didMove(to view: SKView) {
        // Calculation of screen size ratio
        let screenSize = ScreenSize()
        sceneWidthRatio = screenSize.getScreenWidthRatio(width: self.size.width)
        sceneHeightRatio = screenSize.getScreenHeightRatio(height: self.size.height)

        let collectionView = CollectionView(frame: CGRect(x: 0,
                                                          y: 0,
                                                          width: self.frame.width,
                                                          height: self.frame.height),
                                            collectionViewLayout: UICollectionViewFlowLayout())

        collectionView.sceneWidthRatio = sceneWidthRatio
        collectionView.sceneHeightRatio = sceneHeightRatio

        collectionView.register(CollectionViewCustomCell.self, forCellWithReuseIdentifier: "Cell")
        self.scene?.view?.addSubview(collectionView)
    }

}
