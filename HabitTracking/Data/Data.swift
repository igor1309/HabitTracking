//
//  Data.swift
//  HabitTracking
//
//  Created by Igor Malyarov on 09.11.2019.
//  Copyright © 2019 Igor Malyarov. All rights reserved.
//

import Foundation
import SwiftPI

let activitiesData: [Activity] = loadActivities()

func loadActivities() -> [Activity] {
    guard let data: [Activity] = loadFromDocDir("activities.json") else {
        #if DEBUG
        return sampleAtivities
        #else
        return []
        #endif
    }
    
    return data
}

let sampleAtivities = [Activity(name: "Some Activity",
                                decription: "count training (like addition, subtraction, multiplication and division)",
                                timesDone: 10,
                                totalTime: 660)
]
