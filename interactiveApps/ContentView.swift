//
//  ContentView.swift
//  interactiveApps
//
//  Created by Ong Eason on 15/1/2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    @State var base1: Int = 1

    
    // MARK: Computed properties
    var sum: Int{
        return base + base1
    }
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
                
                Text("")
                Spacer()
                Text("\(base)")
                    .font(.system(size: 96))

            }
            
            Stepper(value: $base, label:{
                Text("Select first number")
                })
            
            HStack(alignment: .top) {

                Text("+")
                    .font(.system(size: 96))
                Spacer()
                Text("\(base1)")
                    .font(.system(size: 96))
            }
            
            Stepper(value: $base1, label:{
                Text("Select second number")
                })
                        
            Spacer()
            HStack{
                Text("")
                Spacer()
                Text("\(sum)")
                    .font(.system(size: 96))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

