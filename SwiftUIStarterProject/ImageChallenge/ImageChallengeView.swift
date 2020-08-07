//
//  ImageChallengeView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 09/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct ImageChallengeView: View {
    var body: some View {
        VStack(content: {
            ContentView(title: "Image Challenge View")
            Image("image2")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300, alignment: .center)
                .border(Color.blue, width: 5)
                .cornerRadius(14.0)
                .clipped()
            Image(systemName: "cloud.sun.rain")
                .resizable()
                .foregroundColor(Color.green)
                .frame(width: 40, height: 40, alignment: Alignment.center)
            
        })
        
        /* to make circle sized image
         .clipShape(Circle())
         */
        
    }
}

struct ImageChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ImageChallengeView()
    }
}
