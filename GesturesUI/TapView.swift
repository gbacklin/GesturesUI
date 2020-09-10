//
//  TapView.swift
//  GesturesUI
//
//  Created by Gene Backlin on 9/10/20.
//

import SwiftUI

struct TapView: View {
    @State private var didTap: Bool = false

    var image: Image {
         return Image(systemName: "wand.and.rays")
    }
    var title: String {
         return "Tap"
    }

    var body: some View {
        Circle()
            .fill(didTap ? Color.blue : Color.red)
            .shadow(radius: didTap ? 30 : 0)
            .frame(width: 150, height: 150, alignment: .center)
            .gesture(TapGesture()
                        .onEnded {_ in
                            self.didTap.toggle()
                        }
            )
    }
}

struct TapView_Previews: PreviewProvider {
    static var previews: some View {
        TapView()
    }
}
