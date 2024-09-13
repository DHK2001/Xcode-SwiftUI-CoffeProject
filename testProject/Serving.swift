//
//  Serving.swift
//  testProject
//
//  Created by Derek H. Galeas on 5/8/24.
//

import Foundation

struct Serving: Identifiable, Codable, Equatable {
    var id: UUID
    let name: String
    let description: String
    let  caffeine: Int
    let calories: Int
}
