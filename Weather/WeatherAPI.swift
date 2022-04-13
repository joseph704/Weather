//
//  WeatherAPI.swift
//  Weather
//
//  Created by Joseph Cha on 2022/04/13.
//

import Foundation

struct WeatherAPI {
    static let scheme = "https"
    static let host = "api.openweathermap.org"
    static let path = "/data/2.5/weather"
    
    func searchWeather(cityName: String) -> URLComponents {
        var componets = URLComponents()
        componets.scheme = WeatherAPI.scheme
        componets.host = WeatherAPI.host
        componets.path = WeatherAPI.path
        
        componets.queryItems = [
            URLQueryItem(name: "q", value: cityName),
            URLQueryItem(name: "appid", value: "533f2001b5d849b597aa77c052e8aa85")
        ]
        
        return componets
    }
}
