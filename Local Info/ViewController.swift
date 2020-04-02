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

        print(Locale.preferredLanguages)

        let loc = Locale.current
        print(loc)
        print(loc.identifier)
        print(loc.languageCode)
        print(loc.regionCode)
        print(loc.calendar)
        print(loc.decimalSeparator)
        print(loc.currencyCode)
        print(loc.currencySymbol)
        print(loc.usesMetricSystem)

    }
    
    func getUIScreenInfo() {
        let screen = UIScreen.main
        
            //bounds represents points
            //the width and height represent the amount.
        let pointsWidth = screen.bounds.size.width
        let pointsHeight = screen.bounds.size.height
        print("bounds: Width: \(pointsWidth) x Height: \(pointsHeight) = \(pointsWidth * pointsHeight) points")
        
            //nativeBounds represents pixels
            //the width and height represent the amount.
        let pixelsWidth = screen.nativeBounds.size.width
        let pixelsHeight = screen.nativeBounds.size.height
        print("nativBounds: Width: \(pixelsWidth) x Height: \(pixelsHeight) = \(pixelsWidth * pixelsHeight) pixels")

            //scale is the difference between point and pixel.
        print("Scale: \(screen.scale)")

    }

}

