//
//  ViewController.swift
//  ARKitDemo
//
//  Created by admin on 2017/7/24.
//  Copyright © 2017年 juyuanGroup. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController,ARSCNViewDelegate {
    
    /// 精灵图像
    private let scene:SCNScene = SCNScene.init(named: "art.scnassets/ship.scn")!
    
    /// 背景
    private lazy var scnView:ARSCNView = {
        let scnView = ARSCNView.init(frame: UIScreen.main.bounds)
        scnView.delegate = self
        scnView.scene = self.scene
        self.view.addSubview(scnView)
        return scnView
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.scnView.session.run(ARWorldTrackingSessionConfiguration.init())
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.scnView.session.pause()
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}


