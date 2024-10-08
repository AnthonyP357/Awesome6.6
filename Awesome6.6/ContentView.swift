//
//  ContentView.swift
//  Awesome6.6
//
//  Created by Anthony Perez on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "They Call You When Help Is Needed For Computing Solutions"
    
    var body: some View {
        
        VStack {
            Text("You Are Learning SwiftUI!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color("Gold-BC"))
                .padding()
                .background(Color("Maroon-BC"))
                .cornerRadius(15)
            
            Spacer()
            
            Image(systemName: "cloud.sun.rain.fill")
                .resizable()
                .scaledToFit()
                .symbolRenderingMode(.multicolor)
                .padding()
                .background(Color(hue: 0.493, saturation: 0.256, brightness: 0.958))
                .cornerRadius(30)
                .shadow(color: .gray, radius: 30, x: 20, y: 20)
                .overlay(RoundedRectangle(cornerRadius: 30)
                    .stroke(.teal, lineWidth: 1)
                )
                .padding()
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            
            Spacer()
            
            Button("Show Message") {
                // This is the action performed when the button is pressed
                if messageString == "You Are Awesome!" {
                    messageString = "You Are Great!"
                } else {
                    messageString = "You Are Awesome!"
                }
            }
            .buttonStyle(.borderedProminent)
            
            //                    Spacer()
            //
            //                    Button("Great!") {
            //                        messageString = "You Are Great!"
            //                    }
            //                    .buttonStyle(.borderedProminent)
            //                }
            .padding()
            
            
            
        }
    }
}


#Preview {
    ContentView()
}
