//
//  NimbleLikeTests.swift
//  Snapshot
//
//  Created by Bruno Mazzo on 11/23/16.
//  Copyright © 2016 Bruno Mazzo. All rights reserved.
//

import Foundation
import Quick
import Nimble
import Nimble_Snapshots

@testable import Snapshot

class NimbleLikeTests: QuickSpec {
    
    override func spec() {
        describe("Nimble-Snapshot") {
            var viewController: UIViewController!
            
            beforeEach {
                setNimbleTolerance(0)
                setNimbleTestFolder("tests")
                viewController = UIStoryboard(name: "Main", bundle: Bundle(for: ViewController.self)).instantiateInitialViewController()
            }
            
            it("should have spected snapshot") {
                expect(viewController) == snapshot("ViewController")
            }
            
            it("should have spected snapshot for sizes") {
                expect(viewController) == snapshot("ViewController", sizes: ["Big": CGSize(width: 500, height: 700), "Small": CGSize(width: 320, height: 400)])
            }
            
            it("should have spected snapshot for all font dynamic sizes") {
                expect(viewController) == dynamicTypeSnapshot("ViewController")
            }
        }
    }
}
