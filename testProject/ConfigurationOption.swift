//
//  ConfigurationOption.swift
//  testProject
//
//  Created by Derek H. Galeas on 2/8/24.
//

import Foundation

struct ConfigurationOption: Identifiable, Codable, Hashable {
    let id: UUID
    let name: String
    let calories: Int
    
    static let none = ConfigurationOption(id: UUID(), name: "None", calories: 0)
}
