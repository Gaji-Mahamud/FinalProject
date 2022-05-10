//
//  Restoration.swift
//  Restaurant
//
//  Created by Gaji Mahamud on 5/5/22.
//  Copyright © 2022 Rutgers University. All rights reserved.
//

import Foundation

extension NSUserActivity {

    var order: Order? {
        get {
            guard let jsonData = userInfo?["order"] as? Data else {
                return nil
            }

            return try? JSONDecoder().decode(Order.self, from: jsonData)
        }
        set {
            if let newValue = newValue, let jsonData = try? JSONEncoder().encode(newValue) {
            addUserInfoEntries(from: ["order": jsonData])
            } else {
                userInfo?["order"] = nil
            }
        }
    }
}
