//
//  SettingsDataModel.swift
//  Aspen
//
//  Created by Connor Shearer on 20/12/2024.
//

import SwiftData


@Model
final class SettingsDataModel {
    var startOnBOOT: Bool
    var silentMode: Bool
    
    
    init(startOnBOOT: Bool,
         silentMode: Bool) {
        self.startOnBOOT = startOnBOOT
        self.silentMode = silentMode
    }
}
