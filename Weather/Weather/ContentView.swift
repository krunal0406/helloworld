//
//  ContentView.swift
//  Weather
//
//  Created by Krunal on 01/08/20.
//  Copyright © 2020 Krunal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        VStack(alignment: .center){
            
            TextField("Enter City", text: self.$weatherVM.cityName){
                self.weatherVM.search()
                }.font(.custom("Arial", size: 55))
                .padding()
            
            Text(self.weatherVM.temprature)
                .font(.custom("Arial", size: 110))
                .foregroundColor(.white)
                .offset(y:110)
                .padding()
            
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
