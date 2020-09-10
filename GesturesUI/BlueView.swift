//
//  BlueView.swift
//  GesturesUI
//
//  Created by Gene Backlin on 9/10/20.
//

import SwiftUI

struct BlueView: View {
    let color = Color.blue
    var image: Image {
         return Image(systemName: "paintbrush.fill")
    }
    var title: String {
         return "Blue"
    }

    var body: some View {
        color
            .edgesIgnoringSafeArea(.all)
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
    }
}
