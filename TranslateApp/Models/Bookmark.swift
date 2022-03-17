//
//  Bookmark.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/17.
//

import Foundation


struct Bookmark: Codable {
    
    let sourceLange: Language
    let translatedLanguage: Language
    let sourceText: String
    let translatedText : String
}


