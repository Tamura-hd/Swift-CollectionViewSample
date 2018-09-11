//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by Tamura-hd on 2018/03/11.
//  Copyright © 2018 hirukado-design. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let skView = self.view as! SKView
        
        let scene = MainScene(size: skView.frame.size)
        
        skView.presentScene(scene)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

