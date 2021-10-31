//
//  Models.swift
//  H.W 2.4
//
//  Created by Ирина on 29.10.2021.
//

import Foundation

struct Entrance{
    var loginUser: String
    var password: String
    
    var nameUser: String
    var surname: String
}

struct Info {
    var name: String
    var surname: String
    var age: Int
    
    var hobby: String
}


extension Entrance {
    static func enter() -> [Entrance] {
        return [Entrance(loginUser: "Irina", password: "Password", nameUser: "Irina", surname: "Bexter")
        ]
    }
}


extension Info {
    static func info() -> [Info] {
        return [Info(name: "Irina", surname: "Bexter", age: 18, hobby: "Programming")]
    }
}

