//
//  WeatherData.swift
//  Clima
//
//  Created by Virtual Machine on 21/09/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    //let pressure: Int
    //let humidity: Int
    //let temp_min: Int
    //let temp_max: Int
}

struct Weather: Codable {
    let id: Int
}
