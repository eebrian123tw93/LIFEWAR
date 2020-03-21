//
//  ContentView.swift
//  LifeWar
//
//  Created by Brian on 2020/3/21.
//  Copyright © 2020 Brian. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 1

    var body: some View {
        TabView(selection: $selection) {
            Spacer().tabItem { Text("Tab Label 1") }.tag(1)
            Spacer().tabItem { Text("Tab Label 2") }.tag(2)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
