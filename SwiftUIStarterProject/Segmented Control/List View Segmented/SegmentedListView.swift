//
//  SegmentedListView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 23/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct SegmentedListView: View {

    @State private var sortingIndex: ContactSegments = .name
    @State var contactDetails: [Contacts] = []


    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center, spacing: 8){
                    Spacer()
                    Picker("Picker For Sorting Contacts", selection: $sortingIndex) {
                         Text("Name").tag(ContactSegments.name)
                         Text("Email").tag(ContactSegments.email)
                     }.pickerStyle(SegmentedPickerStyle())
                         .onReceive([sortingIndex].publisher.first()) { (tag) in
                             switch tag {
                             case .name:
                                 self.contactDetails.sort() { $0.name < $1.name }
                             case .email:
                                 self.contactDetails.sort() { $0.email > $1.email }
                             }
                     }
                    Spacer()
                }
                Spacer()
                List {
                    ForEach(contactDetails, id: \.self) { contact in
                        NavigationLink(destination: ContactView(contact: contact)) {
                            ContactCell(contactData: contact)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Contacts In List View"))
        }
    }
}

struct SegmentedListView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedListView(contactDetails: Contacts.getContactGetails())
    }
}
