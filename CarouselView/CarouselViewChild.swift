//
//  CarouselViewChild.swift
//  CarouselView
//
//  Created by Ahmet Bostancıklıoğlu on 22.08.2025.
//

import SwiftUI

struct CarouselViewChild: View, Identifiable {
    var id: Int
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}

