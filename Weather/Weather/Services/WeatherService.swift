//
//  WeatherService.swift
//  Weather
//
//  Created by Krunal on 01/08/20.
//  Copyright © 2020 Krunal. All rights reserved.
//

import Foundation

class WeatherService{
    
    func getWeather(city: String, completion: @escaping (Weather?) -> ()){
        guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=d19b58dc4463b9b34a4ef2164353ad0a&units=metric") else{
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else{
                completion(nil)
                return
            }
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            
            if let weatherResponse = weatherResponse{
                let weather = weatherResponse.main
                completion(weather)
            }else{
                completion(nil)
            }
            
        }.resume()
    }
    
}
