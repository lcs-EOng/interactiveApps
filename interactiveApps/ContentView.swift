//
//  ContentView.swift
//  stopWatch
//
//  Created by Ong Eason on 3/11/2023.
//

import SwiftUI

struct TabView_TabItems: View {
    var body: some View{
TabView{
TabOne()
    .tabItem {
        Image(systemName: "plus")
        Text("Sum")
TabTwo()
    .tabItem {
        Image(systemName: "minus")
        Text("Subtraction")
                        }
                }
        }
    }
}

        
struct TabOne: View{
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

struct TabTwo: View{
    // MARK: Stored properties
    @State var base2: Int = 1
    @State var base3: Int = 1
    
    //MARK: Computed properties
    var sum: Int{
        return base2 - base3
    }
    var body: some View{
        VStack {
                    
                    Spacer()
                    
                    HStack(alignment: .top) {
                        
                        Text("")
                        Spacer()
                        Text("\(base2)")
                            .font(.system(size: 96))

                    }
                    
                    Stepper(value: $base2, label:{
                        Text("Select first number")
                        })
                    
                    HStack(alignment: .top) {

                        Text("+")
                            .font(.system(size: 96))
                        Spacer()
                        Text("\(base3)")
                            .font(.system(size: 96))
                    }
                    
                    Stepper(value: $base3, label:{
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
    TabView(selection: Binding.constant(3)){
        TabView_TabItems()
    }
}

