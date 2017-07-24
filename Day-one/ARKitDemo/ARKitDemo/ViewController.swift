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

    /// 精灵
    private let scene:SCNScene = SCNScene.init(named: "art.scnassets/ship.scn")!
    /// 背景
    private lazy var scnView:ARSCNView! = ARSCNView.init(frame: UIScreen.main.bounds)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scnViewAdd()
    }
    
    func scnViewAdd() {
        scnView.delegate = self
        scnView.scene = scene
        self.view.addSubview(scnView)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        scnView.session.run(ARWorldTrackingSessionConfiguration.init(), options: ARSession.RunOptions.resetTracking)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        scnView.session.pause()
    }

    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}

