//
//  FacebookLikeTests.swift
//  Snapshot
//
//  Created by Bruno Mazzo on 11/23/16.
//  Copyright © 2016 Bruno Mazzo. All rights reserved.
//

import Foundation
import FBSnapshotTestCase

@testable import Snapshot

class FacebookLikeTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        self.recordMode = false
    }
    
    func testAsFacebook() {
        let viewController = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateInitialViewController()
        FBSnapshotVerifyView(viewController!.view)
    }
}
