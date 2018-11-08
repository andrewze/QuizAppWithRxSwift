//
//  Quiz.swift
//  QuizAppWithRxSwift
//
//  Created by DEL on 07.11.2018.
//  Copyright © 2018 DEL. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

class Quiz: Object, Mappable {
    @objc dynamic var title: String?
    @objc dynamic var imageUrl: URL?
    var id = RealmOptional<Int>()
    var imageHeight = RealmOptional<Int>()
    var imageWidth = RealmOptional<Int>()
    var completed = RealmOptional<Bool>()
    var lastResult = RealmOptional<Int>()
    var questions: List<Question>?
    
    func mapping(map: Map) {
        title           <- map["title"]
        imageUrl        <- map["mainPhoto.url"]
        id              <- map["id"]
        imageHeight     <- map["mainPhoto.height"]
        imageWidth      <- map["mainPhoto.width"]
    }
    
    override static func primaryKey() -> String? {
        return "text"
    }
    
    required convenience init?(map: Map) {
        self.init()
    }
}



