//
//  ActivityRow.swift
//  HabitTracking
//
//  Created by Igor Malyarov on 09.11.2019.
//  Copyright © 2019 Igor Malyarov. All rights reserved.
//

import SwiftUI

struct ActivityRow: View {
    @EnvironmentObject var userData: UserData
    var activity: Activity
    @State private var showAction = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .firstTextBaseline) {
                Text(activity.name)
                    .font(.headline)
                Spacer()
                Text("\(activity.timesDone) (\(activity.totalTime?.formatMinuteSecond ?? "n/a"))")
                    .font(.subheadline)
            }
            Text(activity.decription)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
        }
        .contentShape(Rectangle())
        .contextMenu {
            Button(action: {
                self.showAction = true
            }) {
                Image(systemName: "trash")
                Text("Delete")
            }
            .actionSheet(isPresented: $showAction) {
                ActionSheet(title: Text("Delete row?".uppercased()),
                            message: Text("Do you really want to delete this row?\nYou can't undone this action"), buttons: [
                                .cancel(),
                                .destructive(Text("Yes, delete"), action: {
                                    self.delete(self.activity)
                                })
                ])
            }
        }
    }
    
    func delete(_ activity: Activity) {
        //  MARK: - FINISH THIS
        print("delete row")
    }
}

struct ActivityRow_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List(0..<5) { _ in
                ActivityRow(activity: sampleAtivities[0])
            }
        }
        .environmentObject(UserData())
        .environment(\.colorScheme, .dark)
        .environment(\.sizeCategory, .extraLarge)
    }
}
