//
//  ObservableAndSubview_TwoWayView.swift
//  working with data
//
//  Created by Ar Kar Lin on 6/16/26.
//

import SwiftUI

struct ObservableAndSubview_TwoWayView: View {
    
    @State private var oo = ForecastOO()
    
    var body: some View {
        NavigationStack {
        VStack {
            EditableWeatherView(forecast: oo)
       
            Divider()
            Text(oo.sevenDays.map {$0.day}, format: .list(type: .and, width: .narrow) )
        }
        .font(.title)
        .navigationTitle("Weather")
        }
    }
}

struct EditableWeatherView: View {
@Bindable var forecast: ForecastOO

var body: some View {
List($forecast.sevenDays) { $day in
Label(
title: {
TextField("Day", text: $day.day)
.textFieldStyle(.roundedBorder)
},
icon: { Image(systemName: day.icon) }
)
}
.tint(.pink)
}
}

#Preview {
    ObservableAndSubview_TwoWayView()
}
