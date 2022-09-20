//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Naba Riaz on 9/19/22.
//

import SwiftUI

/// The view sets up a diagonally pointing triangle for the detail of the badge.
struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60) 
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
