//
//  RedView.swift
//  GesturesUI
//
//  Created by Gene Backlin on 9/10/20.
//

import SwiftUI

struct RedView: View {
    let color = Color.red    
    var image: Image {
         return Image(systemName: "paintbrush")
    }
    var title: String {
         return "Red"
    }

    var body: some View {
        color
            .edgesIgnoringSafeArea(.all)
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
