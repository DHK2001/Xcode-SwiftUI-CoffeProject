//
//  FileManager-DocumentsDirectory.swift
//  testProject
//
//  Created by Derek H. Galeas on 5/8/24.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
