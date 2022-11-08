//
//  Profile.swift
//  Landmarks
//
//  Created by Dexter Kim on 10/24/22.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotificateions = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case sprint = "🌹"
        case summer = "🙂"
        case autumn = "🍁"
        case winter = "☃️"
        
        var id: String {
            rawValue
        }
    }
}
