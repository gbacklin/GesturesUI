//
//  LongPressView.swift
//  GesturesUI
//
//  Created by Gene Backlin on 9/10/20.
//

import SwiftUI

struct LongPressView: View {
    @State private var didLongPress: Bool = false

    var image: Image {
         return Image(systemName: "arrow.down.circle")
    }
    var title: String {
         return "Long Press"
    }

    var body: some View {
        Rectangle()
            .foregroundColor(Color.purple)
            .cornerRadius(40)
            .scaleEffect(didLongPress ? 1.2 : 1)
            .frame(width: 200, height: 200, alignment: .center)
            .gesture(LongPressGesture(minimumDuration: 1.0)
                .onEnded({_ in self.didLongPress.toggle() }))
            .animation(.easeInOut)
    }
}

struct LongPressView_Previews: PreviewProvider {
    static var previews: some View {
        LongPressView()
    }
}
