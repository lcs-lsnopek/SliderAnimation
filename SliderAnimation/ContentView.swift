//
//  ContentView.swift
//  SliderAnimation
//
//  Created by Logan Snopek on 2022-04-29.
//

import SwiftUI

struct ContentView: View {
    //MARK: Stored Proprotys
    
    @State var hight = 100.0
    let width = 100.0
    
    //MARK: Computed Proprotys
    var body: some View {
        
        HStack{
            RoundedRectangle(cornerRadius: 200)
                .padding()
                .frame(width: width, height: hight)
            
                .animation(
                    Animation
                        .easeInOut(duration: 2)
                        .repeatForever(autoreverses: true)
                )
            
            
            RoundedRectangle(cornerRadius: 200)
                .padding()
                .frame(width: width, height: hight)
            
                .animation(
                   Animation
                    .easeInOut(duration: 4)
                    .repeatForever(autoreverses: true)
                )
            
            
            RoundedRectangle(cornerRadius: 200)
                .padding()
                .frame(width: width, height: hight)
            
                .animation(
                    Animation
                        .easeInOut(duration: 5)
                        .repeatForever(autoreverses: true)
                )

        }
        .onTapGesture {
            hight = 500
        }
        
        
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
