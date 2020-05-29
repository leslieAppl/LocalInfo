//
//  ViewController.swift
//  Local Info
//
//  Created by leslie on 3/31/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getLocalInfo()
        
        getUIScreenInfo()
    }

    func getLocalInfo() {

        print("Locale.preferredLanguages: \(Locale.preferredLanguages)")

        let loc = Locale.current
        print("Locale.current: \(loc)")
        print("Locale.identifier: \(loc.identifier)")
        print("Locale.languageCode: \(String(describing: loc.languageCode))")
        print("Locale.regionCode: \(String(describing: loc.regionCode))")
        print("Locale.calendar: \(loc.calendar)")
        print("Locale.decimalSeparator: \(String(describing: loc.decimalSeparator))")
        print("Locale.currencyCode: \(String(describing: loc.currencyCode))")
        print("Locale.currencySymbol: \(String(describing: loc.currencySymbol))")
        print("Locale.usesMetricSystem: \(loc.usesMetricSystem)")

    }
    
    func getUIScreenInfo() {
        let screen = UIScreen.main
        
            //bounds represents points
            //the width and height represent the amount.
        let pointsWidth = screen.bounds.size.width
        let pointsHeight = screen.bounds.size.height
        print("UIScreen.bounds: Width: \(pointsWidth) x Height: \(pointsHeight) = \(pointsWidth * pointsHeight) points")
        
            //nativeBounds represents pixels
            //the width and height represent the amount.
        let pixelsWidth = screen.nativeBounds.size.width
        let pixelsHeight = screen.nativeBounds.size.height
        print("UIScreen.nativBounds: Width: \(pixelsWidth) x Height: \(pixelsHeight) = \(pixelsWidth * pixelsHeight) pixels")

            //scale is the difference between point and pixel.
        print("Scale: \(screen.scale)")

    }

}

