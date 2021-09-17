//
//  ViewControllerExt.swift
//  Weather App
//
//  Created by  Decagon on 12/08/2021.
//

import Foundation
import UIKit
extension ViewController {
    
    
    //MARK:- CURRENT DISPATCHER
    func dispatchForCurrent() {
        self.currentDataLoader.pullAndDecodeJSONData { [weak self] data in
            guard let value = self else { return }
            
            value.currentWeatherInfo = data
            
            DispatchQueue.main.async {
                
                value.currentTemperatureLabel.text = "\(Int(data.main.temp))°"
                value.maximumLabel.text = "\(Int(data.main.tempMax))°"
                value.minimumLabel.text = "\(Int(data.main.tempMin))°"
                value.descriptionLabel.text = "\(data.weather[0].main.uppercased())"
                value.currentTempLabel.text = "\(Int(data.main.temp))°"
                
                if value.descriptionLabel.text == "RAIN" {
                    value.imageLabel.image = ViewStyling.rain.images
                    value.backgroundViewLabel.backgroundColor = ViewStyling.rain.colors
                    value.generalView.backgroundColor = ViewStyling.rain.colors
                }
                else if value.descriptionLabel.text == "CLOUDS" {
                    value.imageLabel.image = ViewStyling.clouds.images
                    value.backgroundViewLabel.backgroundColor = ViewStyling.clouds.colors
                    value.generalView.backgroundColor = ViewStyling.clouds.colors
                }
                else if value.descriptionLabel.text == "CLEAR" {
                    value.imageLabel.image = ViewStyling.clear.images
                    value.backgroundViewLabel.backgroundColor = ViewStyling.clear.colors
                    value.generalView.backgroundColor = ViewStyling.clear.colors
                }
                else {
                    value.imageLabel.image = ViewStyling.forDefault.images
                }
            }
        }
    }
    
    //MARK:- FORECAST DISPATCHER
    func dispatchForForecast() {
        self.forecastDataLoader.pullAndDecodeJSONForecast {[self] data in
            forecastWeatherInfo = data
            
            DispatchQueue.main.async {
                nextDayIndex0.text = getDayForDate(Date(timeIntervalSince1970: Double(data.list[0].dt) ))
                nextDayIndex1.text = getDayForDate(Date(timeIntervalSince1970: Double(data.list[8].dt) ))
                nextDayIndex2.text = getDayForDate(Date(timeIntervalSince1970: Double(data.list[16].dt) ))
                nextDayIndex3.text = getDayForDate(Date(timeIntervalSince1970: Double(data.list[24].dt) ))
                nextDayIndex4.text = getDayForDate(Date(timeIntervalSince1970: Double(data.list[32].dt) ))
                
                let iconAtIndexOf0 = data.list[0].weather[0].main
                switch iconAtIndexOf0 {
                case "Rain":
                    iconAtIndex0.image = ViewStyling.rain.icons
                case "Clouds":
                    iconAtIndex0.image = ViewStyling.clouds.icons
                case "Clear":
                    iconAtIndex0.image = ViewStyling.clear.icons
                default:
                    iconAtIndex0.image = ViewStyling.forDefault.icons
                }
                
                let iconAtIndexOf1 = data.list[1].weather[0].main
                switch iconAtIndexOf1 {
                case "Rain":
                    iconAtIndex1.image = ViewStyling.rain.icons
                case "Clouds":
                    iconAtIndex1.image = ViewStyling.clouds.icons
                case "Clear":
                    iconAtIndex1.image = ViewStyling.clear.icons
                default:
                    iconAtIndex1.image = ViewStyling.forDefault.icons
                }
                
                let iconAtIndexOf2 = data.list[2].weather[0].main
                switch iconAtIndexOf2 {
                case "Rain":
                    iconAtIndex2.image = ViewStyling.rain.icons
                case "Clouds":
                    iconAtIndex2.image = ViewStyling.clouds.icons
                case "Clear":
                    iconAtIndex2.image = ViewStyling.clear.icons
                default:
                    iconAtIndex2.image = ViewStyling.forDefault.icons
                }
                
                let iconAtIndexOf3 = data.list[3].weather[0].main
                switch iconAtIndexOf3 {
                case "Rain":
                    iconAtIndex3.image = ViewStyling.rain.icons
                case "Clouds":
                    iconAtIndex3.image = ViewStyling.clouds.icons
                case "Clear":
                    iconAtIndex3.image = ViewStyling.clear.icons
                default:
                    iconAtIndex3.image = ViewStyling.forDefault.icons
                }
                
                let iconAtIndexOf4 = data.list[4].weather[0].main
                switch iconAtIndexOf4 {
                case "Rain":
                    iconAtIndex4.image = ViewStyling.rain.icons
                case "Clouds":
                    iconAtIndex4.image = ViewStyling.clouds.icons
                case "Clear":
                    iconAtIndex4.image = ViewStyling.clear.icons
                default:
                    iconAtIndex4.image = ViewStyling.forDefault.icons
                }
                
                forecastTemperatureAtIndex0.text = "\(Int(data.list[0].main.temp))°"
                forecastTemperatureAtIndex1.text = "\(Int(data.list[1].main.temp))°"
                forecastTemperatureAtIndex2.text = "\(Int(data.list[2].main.temp))°"
                forecastTemperatureAtIndex3.text = "\(Int(data.list[3].main.temp))°"
                forecastTemperatureAtIndex4.text = "\(Int(data.list[4].main.temp))°"
            }
        }
    }
    //MARK:- Date converter
    func getDayForDate(_ date: Date?) -> String {
        guard let inputDate = date else {
            return ""
        }
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE" // Monday
        return formatter.string(from: inputDate)
    }
}
