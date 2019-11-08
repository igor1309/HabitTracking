//
//  ActivityList.swift
//  HabitTracking
//
//  Created by Igor Malyarov on 09.11.2019.
//  Copyright © 2019 Igor Malyarov. All rights reserved.
//

import SwiftUI
import SwiftPI

struct ActivityList: View {
    @EnvironmentObject var userData: UserData
    @EnvironmentObject var settings: SettingsStore
    @State private var showModal = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userData.activities) { activity in
                    ActivityRow(activity: activity)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Activities")
            .navigationBarItems(
                trailing: TrailingButtonSFSymbol("plus") {
                    self.showModal = true
                }
                .sheet(isPresented: $showModal) {
                    Text("adding activity here")
            })
        }
    }
}

struct ActivityList_Previews: PreviewProvider {
    static var previews: some View {
        ActivityList()
            .environmentObject(UserData())
            .environmentObject(SettingsStore())
            .environment(\.colorScheme, .dark)
            .environment(\.sizeCategory, .extraLarge)
    }
}
