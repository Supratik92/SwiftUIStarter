//
//  ListView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 17/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

struct ListView: View {

    private var listModelData: [ListModel] {
        return getModelData()
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(listModelData, id: \.self) {  listModel in
                    CellRow(listModel: listModel)
                }
            }
            .navigationBarTitle(Text("List View"))
        }
    }

    /// Function to set model data
    private func getModelData() -> [ListModel] {
        return [ ListModel(id: 1, name: "John", designation: "IT Employee", imageName: "image1"),
        ListModel(id: 2, name: "Harry", designation: "Wizard", imageName: "image2"),
        ListModel(id: 3, name: "Batman", designation: "Super Hero", imageName: "image3")]
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
