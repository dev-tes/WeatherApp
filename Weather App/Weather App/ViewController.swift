//
//  ViewController.swift
//  Weather App
//
//  Created by  Decagon on 07/08/2021.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- CURRENT OUTLETS
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var minimumLabel: UILabel!
    @IBOutlet weak var maximumLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var backgroundViewLabel: UIView!
    //MARK:- FORECAST OUTLETS
    @IBOutlet weak var nextDayIndex0: UILabel!
    @IBOutlet weak var nextDayIndex1: UILabel!
    @IBOutlet weak var nextDayIndex2: UILabel!
    @IBOutlet weak var nextDayIndex3: UILabel!
    @IBOutlet weak var nextDayIndex4: UILabel!
    //MARK:- Forecast icons
    @IBOutlet weak var iconAtIndex0: UIImageView!
    @IBOutlet weak var iconAtIndex1: UIImageView!
    @IBOutlet weak var iconAtIndex2: UIImageView!
    @IBOutlet weak var iconAtIndex3: UIImageView!
    @IBOutlet weak var iconAtIndex4: UIImageView!
    //MARK:- Forecast temperatures
    @IBOutlet weak var forecastTemperatureAtIndex0: UILabel!
    @IBOutlet weak var forecastTemperatureAtIndex1: UILabel!
    @IBOutlet weak var forecastTemperatureAtIndex2: UILabel!
    @IBOutlet weak var forecastTemperatureAtIndex3: UILabel!
    @IBOutlet weak var forecastTemperatureAtIndex4: UILabel!
    //MARK:- General View
    @IBOutlet var generalView: UIView! 
    
    let forecastDataLoader = ForecastWeatherGetter()
    let currentDataLoader = CurrentWeatherGetter()
    var currentWeatherInfo: CurrentWeatherData?
    var forecastWeatherInfo: ForecastWeatherData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dispatchForCurrent()
        dispatchForForecast()
    }
}
