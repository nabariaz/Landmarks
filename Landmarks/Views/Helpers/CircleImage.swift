//
//  CircleImage.swift
//  Landmarks
//
//  Created by Naba Riaz on 9/19/22.
//

import SwiftUI

/// This view sets up the circle image that wll be present as part of the detail screen.
struct CircleImage: View {
    var image: Image
    
    var body: some View { image
        .resizable()
        .frame(width: 300, height: 300)
        .clipShape(Circle())
        .overlay {
            Circle().stroke(.white, lineWidth: 4)
        }
        .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("umbagog"))
    }
}
