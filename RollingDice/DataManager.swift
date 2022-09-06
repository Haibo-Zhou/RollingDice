//
//  DataManager.swift
//  RollingDice
//
//  Created by ZhouHaibo on 2022/9/6.
//

import Foundation

class DataManager {
    static let savePath = FileManager.documentsDirectory.appendingPathComponent(Constants.key)
    
    static func load() -> [Dice] {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode([Dice].self, from: data) {
                return decoded
            }
        }
        
        return []
    }
    
    static func save(_ dices: [Dice]) {
        if let data = try? JSONEncoder().encode(dices) {
            try? data.write(to: savePath, options: [.atomic, .completeFileProtection])
        }
    }
}


extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
