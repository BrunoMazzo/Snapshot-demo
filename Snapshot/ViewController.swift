//
//  ViewController.swift
//  Snapshot
//
//  Created by Bruno Mazzo on 11/23/16.
//  Copyright © 2016 Bruno Mazzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        configureFonts()
        NotificationCenter.default.addObserver(self,
                                                 selector:#selector(configureFonts),
                                                 name: NSNotification.Name.UIContentSizeCategoryDidChange,
                                                 object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureFonts() {
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        descriptionLabel.font = UIFont.preferredFont(forTextStyle: .body)
    }
    
    deinit {
         NotificationCenter.default.removeObserver(self)
    }

}

