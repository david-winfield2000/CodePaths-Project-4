//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to be one with nature?"),
            Task(title: "Your favorite local cafe",
                 description: "You more of a starbucks person or a foxtail person?"),
            Task(title: "Your favorite place to shop",
                 description: "I swear, if you say Target...")
        ]
    }
}
