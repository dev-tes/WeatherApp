//
//  ViewStyling.swift
//  Weather App
//
//  Created by  Decagon on 12/08/2021.
//

import UIKit

enum ViewStyling {
    case rain
    case clouds
    case clear
    case forDefault
    
    var images: UIImage {
        switch self {
        case .rain:
            return UIImage(named: "sea_rainy")!
        case .clouds:
            return UIImage(named: "sea_cloudy")!
        case .clear:
            return UIImage(named: "sea_sunny")!
        case .forDefault:
            return UIImage(named: "sea_sunny")!
        }
    }
    
    var icons: UIImage {
        switch self {
        case .rain:
            return UIImage(named: "rain")!
        case .clouds:
            return UIImage(named: "partlysunny")!
        case .clear:
            return UIImage(named: "partlysunny")!
        case .forDefault:
            return UIImage(named: "clear")!
        }
    }
    
    var colors: UIColor {
        switch self {
        case .rain:
            return UIColor(red: 0.34, green: 0.34, blue: 0.36, alpha: 1.00)
        case .clouds:
            return UIColor(red: 0.33, green: 0.44, blue: 0.48, alpha: 1.00)
        case .clear:
            return UIColor(red: 0.29, green: 0.56, blue: 0.89, alpha: 1.00)
        case .forDefault:
            return UIColor(red: 0.33, green: 0.44, blue: 0.48, alpha: 1.00)
        }
    }
    
    
}
