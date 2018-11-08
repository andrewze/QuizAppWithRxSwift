//
//  endpoint.swift
//  QuizAppWithRxSwift
//
//  Created by DEL on 07.11.2018.
//  Copyright © 2018 DEL. All rights reserved.
//

import Foundation
import Moya

enum Endpoint {
    case quizzes(_ number: Int)
    case questions(_ id: String)
}

extension Endpoint: TargetType {
    var baseURL: URL {
        return URL(string: "http://quiz.o2.pl")!
    }
    
    var path: String {
        switch self {
        case .quizzes(let number):
            return "/api/v1/quizzes/0/\(String(number))"
        case .questions(let quizID):
            return "/api/v1/quiz/\(String(quizID))/0"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
}

private extension String {
    var URLEscapedSearchString: String {
        return self.lowercased().replacingOccurrences(of: " ", with: "+")
    }
}
