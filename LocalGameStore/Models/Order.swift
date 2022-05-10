//
//  SettingsViewController.swift
//  LocalGameStore
//
//  Created by Gaji Mahamud on 5/5/22.
//  Copyright © 2022 Rutgers University. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
