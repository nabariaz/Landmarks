//
//  Profile.swift
//  Landmarks
//
//  Created by Naba Riaz on 9/19/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "Naba Riaz")
    
    enum Season: String, CaseIterable, Identifiable {
        case sprint = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
