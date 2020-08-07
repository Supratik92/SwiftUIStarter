    //
//  CellRow.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 17/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

    struct CellRow: View {

        let listModel: ListModel

        var body: some View {
            HStack(spacing: 20){
                Image(listModel.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .cornerRadius(4)

                VStack(alignment: .leading,
                       spacing: 2) {
                        Text(listModel.name)
                            .font(.headline)
                        Text(listModel.designation)
                            .font(.subheadline)
                }

                Spacer()

                Button(action: didTapOnButton) {
                    Image("chevron.right")
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.black)
                        .border(Color.gray, width: 1)
                    
                }
            }.padding(20)

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
