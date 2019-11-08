//
//  Activity.swift
//  HabitTracking
//
//  Created by Igor Malyarov on 09.11.2019.
//  Copyright © 2019 Igor Malyarov. All rights reserved.
//

import Foundation

struct Activity: Codable, Identifiable {
    var id = UUID()
    
    var name: String
    var decription: String
    var timesDone: Int
    var totalTime: TimeInterval?
}

extension Activity {
    
    func add() {
        
    }
}
