//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Naba Riaz on 9/19/22.
//

import SwiftUI

/// This view sets uo the favorite button so that the user can toggle it.
struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill": "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .red: .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
