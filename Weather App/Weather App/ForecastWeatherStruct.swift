//
//  ForecastWeatherStruct.swift
//  Weather App
//
//  Created by  Tesleem on 11/08/2021.

import Foundation

// MARK: - Welcome
struct ForecastWeatherData: Codable {
    let list: [List]
}
// MARK: - List
struct List: Codable {    let main: Main
    let weather: [Weather]
    let dt: Int
}
// MARK: - Main
struct Main: Codable {
    let temp: Double
}
// MARK: - Weather
struct Weather: Codable {
    let main: String
}
