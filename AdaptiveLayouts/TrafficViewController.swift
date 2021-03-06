//
//  TrafficViewController.swift
//  AdaptiveLayouts
//
//  Created by Jarrod Parkes on 10/16/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit

// MARK: - TrafficViewController: UIViewController

class TrafficViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var mainLabel: UILabel!
    
    // MARK: Vary Interface Based on Traits
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        if previousTraitCollection?.horizontalSizeClass == traitCollection.horizontalSizeClass &&
            previousTraitCollection?.verticalSizeClass == traitCollection.verticalSizeClass {
            return
        }
        
        if traitCollection.horizontalSizeClass == .regular && traitCollection.verticalSizeClass == .regular {
            mainLabel.font = UIFont(name: "Futura-Bold", size: 75)
        } else {
            mainLabel.font = UIFont(name: "Futura-Bold", size: 35)
        }
    }
}
