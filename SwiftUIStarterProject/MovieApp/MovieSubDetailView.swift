//
//  MovieSubDetailView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 07/08/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct MovieSubDetailView: View {
    var body: some View {
        return HStack(spacing: 10) {
            Text("1992")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
            Text("U")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
            Text("1hr 28min")
                .font(.system(size: 13))
                .foregroundColor(.secondary)
        }
    }
}
