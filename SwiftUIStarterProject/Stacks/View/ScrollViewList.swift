//
//  ScrollViewList.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 17/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct ScrollViewList: View {
    
    @ObservedObject var viewModel: MovieDataObservable


    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ForEach(viewModel.movieResponse, id: \.self) {  response in
                    ZStack {
                        VStack{
                            CellRow(listModel: response)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Scroll View with List"))

        }
    }

    /// Function to set model data
     private func getModelData() -> [ListModel] {
         return [ ListModel(id: 1, name: "Jack", designation: "Dancer", imageName: "image1"),
         ListModel(id: 2, name: "Arijit", designation: "Singer", imageName: "image2"),
         ListModel(id: 3, name: "Leo", designation: "Actor", imageName: "image3")]
     }
}

//struct ScrollView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollViewList()
//    }
//}
