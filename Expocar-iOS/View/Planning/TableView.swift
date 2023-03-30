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

struct TimetableCellView: View {
    var course: Course
    
    var body: some View {
        VStack {
            Text(course.name)
            Text(course.location)
            Text("\(course.startTime) - \(course.endTime)")
        }
    }
}


struct TimetableView: View {
    var courses: [Course]
    
    var body: some View {
        ScrollView {
            LazyHGrid(rows: Array(repeating: GridItem(.fixed(60)), count: 7), spacing: 20) {
                ForEach(courses, id: \.self.id_course) { course in
                    TimetableCellView(course: course)
                        .border(Color.gray)
                }
            }
        }
    }
}


struct TableView: View {
    var body: some View {
        let courses = [
            Course(name: "Math", startTime: Date(), endTime: Date(), location: "Room 101"),
            Course(name: "Science", startTime: Date(), endTime: Date(), location: "Room 102"),
            Course(name: "English", startTime: Date(), endTime: Date(), location: "Room 103")
        ]
        
        NavigationView {
            TimetableView(courses: courses)
                .navigationTitle("Timetable")
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
