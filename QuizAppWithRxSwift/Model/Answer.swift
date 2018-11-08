//
//  Answer.swift
//  QuizAppWithRxSwift
//
//  Created by DEL on 07.11.2018.
//  Copyright © 2018 DEL. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Answer: Object, Mappable {
    
    @objc dynamic var text: String? = nil
    var isCorrect = RealmOptional<Bool>()
    var order = RealmOptional<Int>()

    required convenience init?(map: Map) {
        self.init()
    }
    
    override static func primaryKey() -> String? {
        return "text"
    }

    func mapping(map: Map) {
        order       <- map["order"]
        text        <- map["text"]
        isCorrect   <- map["isCorrect"]
    }


    
}
