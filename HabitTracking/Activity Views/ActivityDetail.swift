//
//  ActivityDetail.swift
//  HabitTracking
//
//  Created by Igor Malyarov on 09.11.2019.
//  Copyright © 2019 Igor Malyarov. All rights reserved.
//

import SwiftUI
import SwiftPI

struct ActivityDetail: View {
    var activity: Activity
    
    var body: some View {
        NavigationView {
            Form {
                Section(footer: Text("comment.")) {
                    Button("Rename") {
                        //  MARK: - FINISH THIS
                        
                    }
                    Text(activity.decription)
                        .font(.subheadline)
                }
                
                HStack(alignment: .firstTextBaseline) {
                    Text("Times done")
                    
                    Spacer()
                    Text("\(activity.timesDone)")
                }
                
                HStack(alignment: .firstTextBaseline) {
                    Text("Total Time")
                    Spacer()
                    Text("\(activity.totalTime?.formatMinuteSecond ?? "n/a")")
                }
            }
            .navigationBarTitle(activity.name)
            .navigationBarItems(trailing: TrailingButton("Edit") {
                //  MARK: - FINISH THIS
                
            })
        }
    }
}

struct ActivityDetail_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetail(activity: sampleAtivities[0])
            .environment(\.colorScheme, .dark)
            .environment(\.sizeCategory, .extraLarge)
    }
}
