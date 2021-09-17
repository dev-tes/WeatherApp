//
//  Daily weather struct.swift
//  Weather App
//
//  Created by  Tesleem on 09/08/2021.

import Foundation

// MARK: - Welcome
struct CurrentWeatherData: Codable {
    let weather: [Weather1]
    let main: Main1
}
// MARK: - Main
struct Main1: Codable {
    let temp, tempMin, tempMax: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case tempMin = "temp_min"
        case tempMax = "temp_max"
    }
}
// MARK: - Weather
struct Weather1: Codable {
    let main: String
}









