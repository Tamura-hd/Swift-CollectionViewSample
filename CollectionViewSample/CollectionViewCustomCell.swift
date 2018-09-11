//
//  CollectionViewCustomCell.swift
//  CollectionViewSample
//
//  Created by Tamura-hd on 2018/09/09.
//  Copyright © 2018 hirukado-design. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewCustomCell: UICollectionViewCell {

    var textLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)

        // TextLabel
        let textLabelWidth: CGFloat = self.frame.width * 0.9
        let textLabelheight: CGFloat = self.frame.height * 0.22
        textLabel = UILabel(frame: CGRect(x: self.frame.width * 0.05,
                                          y: self.frame.height - (textLabelheight * 1.3),
                                          width: textLabelWidth,
                                          height: textLabelheight))
        textLabel.textAlignment = .natural
        self.addSubview(textLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
