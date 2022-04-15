//
//  ContentView.swift
//  War Game
//
//  Created by Terry Malden on 2022-03-03.
//

import SwiftUI

struct ContentView: View {
  
        @State var playerCard = "card"
        @State var cpuCard = "card"
        @State var playscore = 0
        @State var cpscore = 0
    
    var body: some View {
        ZStack{
 
        Image("background")
            .ignoresSafeArea()
            
        VStack{
       Spacer()
            Image("logo")
                .padding(.bottom, 50.0)
      
        HStack{
            Spacer()
            Image(playerCard)
            
            Spacer()
            Image(cpuCard)
            
            Spacer()
            }
      
        .padding(.bottom
                 , 50.0)
                
        Button(action: {
            let randomInt = Int.random(in: 2 ... 14)
            var randomInt2 = Int.random(in: 2 ... 14)
                    
            while randomInt == randomInt2 {
                randomInt2 = Int.random(in: 2 ... 14)}
                    
            playerCard = "card" + String(randomInt)
            cpuCard = "card" + String(randomInt2)
                    
            if randomInt > randomInt2{
                playscore += 1}
            else {
                cpscore += 1}
                    
                },

               label: {
                    Image("dealbutton")
                })
                .padding(.bottom )
            
            HStack{
                    Spacer()
            VStack{

            Text("Player")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.bottom, 5.0)
                
            Text(String(playscore))
                .font(.largeTitle)
                .foregroundColor(.white)
            }
                .padding(.trailing)
        
            VStack{

            Text("CPU")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.bottom, 5.0)
       
            Text(String(cpscore))
                .font(.largeTitle)
                .foregroundColor(.white)
            }
                .padding(.leading)
                Spacer()
            }
            Spacer()
        }
        }
        }
    }
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: -1.0, height: 1.0)
                
            
        }
    }
}


