//
//  TableView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/30/23.
//

import Foundation
import SwiftUI

struct Course {
    var id_course = UUID()
    var name: String
    var startTime: Date
    var endTime: Date
    var location: String
}

struct TableView: View {
    var body: some View {
        let courses = [
            Course(name: "Math", startTime: Date(), endTime: Date(), location: "Room 101"),
            Course(name: "Science", startTime: Date(), endTime: Date(), location: "Room 102"),
            Course(name: "English", startTime: Date(), endTime: Date(), location: "Room 103")
        ]
        
        NavigationView {
            ScrollView {
                LazyHGrid(rows: Array(repeating: GridItem(.fixed(100)), count: 7), spacing: 20) {
                    ForEach(courses, id: \.self.id_course) { course in
                        VStack {
                            Text(course.name)
                            Text(course.location)
                            Text("\(course.startTime)")
                            Text("\(course.endTime)")
                        }.border(Color.gray)
                    }
                }
            }
            .navigationTitle("Timetable")
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
