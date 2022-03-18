//
//  TranslateRequestModel.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/18.
//

import Foundation


struct TranslateRequestModel : Codable {
    let source: String
    let target: String
    let text: String 
    
}
