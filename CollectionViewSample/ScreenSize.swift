//
//  ScreenSize.swift
//  CollectionViewSample
//
//  Created by Tamura-hd on 2017/10/01.
//  Copyright © 2017 hirukado-design. All rights reserved.
//

import Foundation
import CoreGraphics

class ScreenSize: NSObject {

    // Base size - iPhone 5s
    private let baseScreenWidth: CGFloat = 320.0
    private let baseScreenHeight: CGFloat = 568.0

    override init() {
        super.init()
    }

    /// Calculate ratio of screen horizontal size
    ///
    /// - Parameter width: Width size
    /// - Returns: Ratio of horizontal size
    func getScreenWidthRatio(width: CGFloat) -> CGFloat {
        return width / baseScreenWidth
    }

    /// Calculate ratio of screen vertical size
    ///
    /// - Parameter height: Height size
    /// - Returns: Ratio of Vertical size
    func getScreenHeightRatio(height: CGFloat) -> CGFloat {
        return height / baseScreenHeight
    }

}
