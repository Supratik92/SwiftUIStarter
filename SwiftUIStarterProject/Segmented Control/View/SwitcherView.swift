//
//  SwitcherView.swift
//  SwiftUIStarterProject
//
//  Created by Banerjee, Supratik on 23/07/20.
//  Copyright © 2020 Banerjee, Supratik. All rights reserved.
//

import SwiftUI

 enum DesignViews: String, CaseIterable, Identifiable {
    case listView = "List View"
    case scrollView = "Scroll View"
    case segmentedControlListView = "Segmentted Control with List View"
    case segmentedControlScrollView = "Segmented Control with Scroll View"
    case movieRatingView = "Movie Rating View"
    case formAndPickerView = "Form and Picker View"
    case geometryView = "Geometry View"

    var id: UUID {
        return UUID()
    }
}

struct SwitcherView: View {

    @State private var showListView = false
    @State private var showScrollView = false
    @State private var showSegmentedListView = false
    @State private var showSegmentedScrollView = false
    @State private var showMovieRatingView = false
    @State private var showFormAndPickerView = false
    @State private var showGemetryView = false


    var body: some View {
        NavigationView {
            List {
                ContentView(title: DesignViews.listView.rawValue, font: .body).onTapGesture {
                    self.showListView.toggle()
                }.sheet(isPresented: self.$showListView) {
                    ListView(viewModel: MovieDataObservable())
                }
                ContentView(title: DesignViews.scrollView.rawValue, font: .body).onTapGesture {
                    self.showScrollView.toggle()
                }.sheet(isPresented: $showScrollView) {
                    ScrollViewList(viewModel: MovieDataObservable())
                }
                ContentView(title: DesignViews.segmentedControlListView.rawValue, font: .body).onTapGesture {
                    self.showSegmentedListView.toggle()
                }.sheet(isPresented: $showSegmentedListView) {
                    SegmentedListView(contactDetails: Contacts.getContactGetails())
                }
                ContentView(title: DesignViews.segmentedControlScrollView.rawValue, font: .body).onTapGesture {
                    self.showSegmentedScrollView.toggle()
                }.sheet(isPresented: $showSegmentedScrollView) {
                    SegmentedScrollView(contactDetails: Contacts.getContactGetails())
                }
                ContentView(title: DesignViews.movieRatingView.rawValue, font: .body).onTapGesture {
                    self.showMovieRatingView.toggle()
                }.sheet(isPresented: $showMovieRatingView) {
                    MovieBaseView()
                }
                ContentView(title: DesignViews.formAndPickerView.rawValue, font: .body).onTapGesture {
                    self.showFormAndPickerView.toggle()
                }.sheet(isPresented: $showFormAndPickerView) {
                    FormAndPicker()
                }
                ContentView(title: DesignViews.geometryView.rawValue, font: .body).onTapGesture {
                    self.showGemetryView.toggle()
                }.sheet(isPresented: $showGemetryView) {
                    if #available(iOS 14.0, *) {
                        GeometryExample()
                    } else {
                       Text("Available in iOS 14 and Above")
                    }
                }

            }
            .navigationBarTitle(Text("Weekly Designs"))
            .font(.headline)
        }
    }
}

struct SwitcherView_Previews: PreviewProvider {
    static var previews: some View {
        SwitcherView()
    }
}
