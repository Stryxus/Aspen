//
//  Item.swift
//  Aspen
//
//  Created by Connor Shearer on 14/12/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
