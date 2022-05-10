//
//  SettingsViewController.swift
//  LocalGameStore
//
//  Created by Gaji Mahamud on 5/5/22.
//  Copyright © 2022 Rutgers University. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreparationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
