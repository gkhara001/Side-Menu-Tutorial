//
//  MenuOption.swift
//  SideMenuTutorial
//
//  Created by Gagan Khara on 26/05/19.
//  Copyright © 2019 Gagan Khara. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case Inbox
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Inbox: return "Inbox"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .Inbox: return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
        case .Settings: return UIImage(named: "baseline_settings_white_24dp") ?? UIImage()
        }
    }
}
