//
//  Dice.swift
//  RollingDice
//
//  Created by ZhouHaibo on 2022/9/6.
//

import Foundation

struct Dice: Codable {
    let faceNum: Int    // Number displayed on Dice
    let rollNum: Int    // How many times rolled
    
    static let example = Dice(faceNum: 6, rollNum: 1)
}

enum Constants {
    static let key = "SaveData"
}
