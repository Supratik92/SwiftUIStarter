    //
//  CellRow.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 17/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

    struct CellRow: View {

        let listModel: MoviePopluarity
        @State private var isAnimating = true

        var body: some View {
            VStack(alignment: .leading,
                   spacing: 4) {
                    WebImage(url: URL(string: MovieApi.imageFetchBaseUrl + listModel.posterPath),
                             options: [.progressiveLoad, .delayPlaceholder],
                             isAnimating: $isAnimating)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: UIScreen.main.bounds.width - 40 ,
                               height: UIScreen.main.bounds.width / 2)
                        .cornerRadius(4)
                    Text(listModel.title)
                        .font(.headline)
                    Text(listModel.overview)
            }

        }

        private func didTapOnButton() {
            // TODO: Week 4
        }
    }

/*struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
       // CellRow()
    }
} */
