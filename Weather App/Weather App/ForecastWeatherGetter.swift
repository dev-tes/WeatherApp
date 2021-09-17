//
//  ForecastWeatherData.swift
//  Weather App
//
//  Created by  Decagon on 09/08/2021.

import Foundation
import UIKit

class ForecastWeatherGetter {
    let apiKey = "cbb5426e3cac720686b38b2ced958a02"
    let city: String = "Ondo"
    //let numberOfDa
    
    func pullAndDecodeJSONForecast(completionHandler: @escaping (ForecastWeatherData) -> ()) {
        let urlString2 = "https://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(apiKey)&units=metric"
        if let url = URL(string: urlString2) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let forcastJson = try JSONDecoder().decode(ForecastWeatherData.self, from: data)
                        completionHandler(forcastJson)
                    }
                    catch {
                    }
                }
            }.resume()
        }
    }
}
