//
//  RotationView.swift
//  GesturesUI
//
//  Created by Gene Backlin on 9/10/20.
//

import SwiftUI

struct RotationView: View {
    @State var magnificationValue: CGFloat = CGFloat(1)
    @State var rotationValue: Angle = .zero

    var image: Image {
         return Image(systemName: "crop.rotate")
    }
    var title: String {
         return "Rotate"
    }

    var body: some View {
        Rectangle()
            .foregroundColor(Color.purple)
            .cornerRadius(40)
            .scaleEffect(magnificationValue)
            .rotationEffect(rotationValue)
            .frame(width: 200, height: 200, alignment: .center)
            .gesture(MagnificationGesture()
                        .onChanged { value in
                            self.magnificationValue = value
                        }
            .simultaneously(with: RotationGesture().onChanged { value in self.rotationValue = value }))
    }
}

struct RotationView_Previews: PreviewProvider {
    static var previews: some View {
        RotationView()
    }
}
