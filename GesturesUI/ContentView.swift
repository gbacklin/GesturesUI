//
//  ContentView.swift
//  GesturesUI
//
//  Created by Gene Backlin on 9/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TapView()
                .tabItem {
                    TapView().image
                    Text(TapView().title)
                }
            LongPressView()
                .tabItem {
                    LongPressView().image
                    Text(LongPressView().title)
                }
            RotationView()
                .tabItem {
                    RotationView().image
                    Text(RotationView().title)
                }
            RedView()
                .tabItem {
                    RedView().image
                    Text(RedView().title)
                }
            BlueView()
                .tabItem {
                    BlueView().image
                    Text(BlueView().title)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
