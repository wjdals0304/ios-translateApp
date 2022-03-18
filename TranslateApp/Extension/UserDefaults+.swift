//
//  UserDefaults+.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/17.
//

import Foundation

extension UserDefaults {
    
    enum Key: String {
        case bookmarks
    }
    
    var bookmarks: [Bookmark] {
        get {
            guard let data = UserDefaults.standard.data(forKey: Key.bookmarks.rawValue) else { return [] }
            
            return (try? PropertyListDecoder().decode([Bookmark].self, from: data)) ?? []
        }
        set {
            UserDefaults.standard.setValue(
                try? PropertyListEncoder().encode(newValue),
                forKey: Key.bookmarks.rawValue)
        }
    }
    
}
