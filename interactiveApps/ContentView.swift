//
//  ContentView.swift
//  stopWatch
//
//  Created by Ong Eason on 3/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //Second layer (rest of interface)
            VStack {
                
                Spacer()
                
                Text("00:09.96")
                    .font(Font.system(size: 90))
                    .fontWeight(.thin)
                    .foregroundStyle(.white)
                
                
                //List of items
                
                .frame(height: 300)
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

#Preview {
    TabView(selection: Binding.constant(3)){
        Text("World Clock")
            .tabItem {
                Image(systemName: "plus")
                Text("Sum")
            }
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "minus")
                Text("Minus")
            }
        
        ContentView()
            .tabItem {
                Image(systemName: "multiply")
                Text("Multiply")
            }
        
        Text("Timer")
            .tabItem {
                Image(systemName: "divide")
                Text("Division")
            }
        
        
        
        
    }
    //Change the accent color for the currently active tab item
    .accentColor(.orange)
    .preferredColorScheme(.dark)
}
