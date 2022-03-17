//
//  Type.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/17.
//

import UIKit

enum `Type` {
    case source
    case target

    var color: UIColor {
        switch self {
        case .source: return .label
        case .target: return .mainTintColor
        }
    }
}

