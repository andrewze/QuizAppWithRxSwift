//
//  Question.swift
//  QuizAppWithRxSwift
//
//  Created by DEL on 07.11.2018.
//  Copyright © 2018 DEL. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift
import ObjectMapper_Realm

class Question: Object, Mappable {

    @objc dynamic var imageUrl: URL?
    @objc dynamic var text: String?
    var imageHeight = RealmOptional<Int>()
    var imageWidth = RealmOptional<Int>()
    var answers: List<Answer>?
    var order = RealmOptional<Int>()
    
    func mapping(map: Map) {
        imageUrl            <- map["image.url"]
        imageHeight         <- map["text"]
        imageWidth          <- map["text"]
        answers             <- (map["type"], ListTransform<Answer>())
        order               <- map["order"]
    }
    
    override static func primaryKey() -> String? {
        return "text"
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
}

