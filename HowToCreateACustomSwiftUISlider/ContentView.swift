//
//  ContentView.swift
//  HowToCreateACustomSwiftUISlider
//
//  Created by ramil on 05.08.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentValue = 4.0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "sun.min")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.orange)
                
                Slider(value: $currentValue, in: 0.0 ... 10.0)
                    .accentColor(.orange)
                    .padding()
                
                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.orange)
            }.padding()
            
            Text("The current value: \(Int(currentValue))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
