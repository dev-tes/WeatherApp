//
//  WeatherGetter.swift
//  Weather App
//
//  Created by  Decagon on 09/08/2021.
//

import Foundation

class CurrentWeatherGetter {
    
    private let openWeatherMapBaseURL = "https://api.openweathermap.org/data/2.5/weather"
    private let openWeatherMapAPIKey = "cf05fca1e1aeafc05bc94b61e003a01f"
    private let city = "Ondo"
    
    func pullAndDecodeJSONData(completionHandler: @escaping (CurrentWeatherData) -> ()) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(openWeatherMapAPIKey)&units=metric"
        if let url = URL(string: urlString) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let json = try JSONDecoder().decode(CurrentWeatherData.self, from: data)
                        completionHandler(json)
                    }
                    catch {
                    }
                }
            }.resume()
        }
    }
    
}
