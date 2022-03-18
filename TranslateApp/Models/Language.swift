//
//  Language.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/17.
//

import Foundation



enum Language: String, CaseIterable, Codable {
    case ko
    case en
    case ja
    case ch = "zn-CN"
    
    var title: String {
        switch self {
        case .ko: return NSLocalizedString("Korean", comment: "한국어")
        case .en: return NSLocalizedString("English", comment: "영어")
        case .ja: return NSLocalizedString("Japanese", comment: "일본어")
        case .ch: return NSLocalizedString("Chinese", comment: "중국")
        }
    }
    
    var languageCode: String {
        self.rawValue
    }
    
}
