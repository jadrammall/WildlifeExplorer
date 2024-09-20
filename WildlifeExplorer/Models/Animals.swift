//
//  Lion.swift
//  WildlifeExplorer
//
//  Created by Jad Rammal on 20/09/2024.
//

import Foundation

// Parent class: Animal
class Animal {
    var name: String
    var sound: String
    var habitat: String
    var diet: String

    init(name: String, sound: String, habitat: String, diet: String) {
        self.name = name
        self.sound = sound
        self.habitat = habitat
        self.diet = diet
    }

    func uniqueBehavior() -> String {
        return ""
    }
}

// Child class: Lion
class Lion: Animal {
    init() {
        super.init(name: "Lion", sound: "roar", habitat: "savannah", diet: "carnivorous")
    }

    override func uniqueBehavior() -> String {
        return "roar to 8Km away."
    }
}

// Child class: Snake
class Snake: Animal {
    init() {
        super.init(name: "Snake", sound: "hiss", habitat: "desert", diet: "carnivorous")
    }

    override func uniqueBehavior() -> String {
        return "can shed its skin."
    }
}

// Child class: Horse
class Horse: Animal {
    init() {
        super.init(name: "Horse", sound: "neigh", habitat: "grasslands", diet: "herbivorous")
    }

    override func uniqueBehavior() -> String {
        return "sleep standing up."
    }
}
