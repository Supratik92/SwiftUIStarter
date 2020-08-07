//
//  ContactView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 22/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct ContactCell: View {

    @State private var showALert = false

    var contactData: Contacts

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(contactData.name)
                    .fontWeight(.bold)
                    .font(.system(size: 18))
                Text(contactData.email)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
            }
            Spacer()
            Button(action: didTapOnMessage) {
                Image(systemName: "message.fill")
                    .frame(width: 40, height: 40, alignment: .center)
                    .font(.body)
                    .foregroundColor(.green)
            }.alert(isPresented: $showALert) { () -> Alert in
                Alert(title: Text("Development in progress"),
                      message: Text("Stay Tunned for this feature 🤩🤩"),
                      dismissButton: .default(Text("Sure!")))
            }
            Button(action: didTapOnVideoCall) {
                Image(systemName: "video.fill")
                    .frame(width: 40, height: 40, alignment: .center)
                    .font(.body)
                    .foregroundColor(.red)
            }.alert(isPresented: $showALert) { () -> Alert in
                Alert(title: Text("Development in progress"),
                      message: Text("Stay Tunned for this feature 🤩🤩"),
                      dismissButton: .default(Text("Sure!")))
            }

        }
    }

    private func didTapOnVideoCall() {
        showALert = true
    }

    private func didTapOnMessage() {
        showALert = true
    }
}
