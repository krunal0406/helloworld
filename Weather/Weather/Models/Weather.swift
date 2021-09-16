//
//  Weather.swift
//  Weather
//
//  Created by Krunal on 01/08/20.
//  Copyright © 2020 Krunal. All rights reserved.
//

import Foundation


struct WeatherResponse: Decodable{
    var main: Weather
}

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}
