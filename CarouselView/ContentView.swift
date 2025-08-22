//
//  ContentView.swift
//  CarouselView
//
//  Created by Ahmet Bostancıklıoğlu on 22.08.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            CarouselView(views: getChildViews())
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Gray"))
        
    }
    
    func getChildViews() -> [CarouselViewChild] {
        var tempViews: [CarouselViewChild] = []
        
        for i in (1...4) {
            tempViews.append(
                CarouselViewChild(id: i){
                    ZStack {
                        Image("\(i)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .mask {
                                RoundedRectangle(cornerRadius: 18)
                                    .frame(width: 250, height: 400)
                            }
                    }
                    .frame(width: 250, height: 400)
                    .shadow(radius: 10)
                }
            )
        }
        return tempViews
    }
}

#Preview {
    ContentView()
}
