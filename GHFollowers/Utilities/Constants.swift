//
//  Constants.swift
//  GHFollowers
//
//  Created by Adam Amangeldiev on 2025/1/4.
//

import UIKit

enum SFSymbols {
    static let location  = UIImage(systemName: "mappin.and.ellipse")
    static let repos     = UIImage(systemName: "folder")
    static let gists     = UIImage(systemName: "text.alignleft")
    static let followers = UIImage(systemName: "heart")
    static let following = UIImage(systemName: "person.2")
}


enum Images {
    static let ghLogo         = UIImage(named: "gh-logo")
    static let placeholder    = UIImage(named: "avatar-placeholder")
    static let emptyStateLogo = UIImage(named: "empty-state-logo")
}

enum ScreenSize {
    static let width     = UIScreen.main.bounds.size.width
    static let height    = UIScreen.main.bounds.size.height
    static let maxLength = max(ScreenSize.width, ScreenSize.height)
    static let minLenght = min(ScreenSize.width, ScreenSize.height)
}


enum DeviceTypes {
    static let idiom: UIUserInterfaceIdiom = UIDevice.current.userInterfaceIdiom
    static let nativeScale                 = UIScreen.main.nativeScale
    static let scale                       = UIScreen.main.scale
    
    static let isiphoneSE                  = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiphone8Standart           = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiphone8Zoomed             = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiphone8PlusStandard       = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiphone8PlusZoomed         = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isiphoneX                   = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiphoneXMaxAndXR           = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isipad                      = idiom == .pad && ScreenSize.maxLength >= 1024.0
    
    static func isiphoneXAspectRatio() -> Bool {
        return isiphoneX || isiphoneXMaxAndXR
    }
    
}
