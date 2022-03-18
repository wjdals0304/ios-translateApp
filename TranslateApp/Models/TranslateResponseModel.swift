//
//  TranslateResponseModel.swift
//  TranslateApp
//
//  Created by 김정민 on 2022/03/18.
//

import Foundation


struct TranslateResponseModel: Decodable {

    private let message: Message
    
    var translatedText: String { message.result.translatedText}
    
    struct Message: Decodable {
        let result : Result
    }
    
    struct Result: Decodable {
        let translatedText: String
    }
}
