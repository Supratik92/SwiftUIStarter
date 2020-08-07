//
//  ContactView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 23/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct ContactView: View {
    var contact: Contacts
    var body: some View {
        VStack {
            Text(contact.name)
            .font(.caption)
            Text(contact.phoneNumber)
            .font(.caption)
            Text(contact.email)
            .font(.caption)
        }
    }
}
