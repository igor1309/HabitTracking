//
//  UserData.swift
//  HabitTracking
//
//  Created by Igor Malyarov on 09.11.2019.
//  Copyright © 2019 Igor Malyarov. All rights reserved.
//

import Foundation
import SwiftPI

final class UserData: ObservableObject {
    
    @Published var activities: [Activity] = activitiesData {
        didSet {
            saveJSON(data: activities, filename: "activities.json")
        }
    }
}
