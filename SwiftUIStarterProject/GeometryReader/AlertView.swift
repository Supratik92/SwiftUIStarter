//
//  AlertView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 10/09/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct AlertView: View {
    @State var isAlertShowing = false
    var body: some View {
        Button(action: {
            self.isAlertShowing = true
        }, label: {
            Text("Show Alert")
            }).alert(isPresented: $isAlertShowing, content: {
                Alert(title: Text("Swift UI Alert"), message: Text("Thank you"), dismissButton: .default(Text("Okay")))
            })
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
