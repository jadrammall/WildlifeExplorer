//
//  Lion.swift
//  WildlifeExplorer
//
//  Created by Jad Rammal on 20/09/2024.
//

import Foundation
import AVFoundation

// Parent class: Animal
class Animal {
    var name: String
    var sound: String
    var habitat: String
    var diet: String
    var soundFileName: String
    var player: AVAudioPlayer?
    
    init(name: String, sound: String, habitat: String, diet: String, soundFileName: String) {
        self.name = name
        self.sound = sound
        self.habitat = habitat
        self.diet = diet
        self.soundFileName = soundFileName
    }

    func uniqueBehavior() -> String {
        return ""
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: soundFileName, withExtension: "mp3") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

// Child class: Lion
class Lion: Animal {
    init() {
        super.init(name: "Lion", sound: "roar", habitat: "savannah", diet: "carnivorous", soundFileName: "lion-roar")
    }

    override func uniqueBehavior() -> String {
        return "roar to 8Km away."
    }
}

// Child class: Snake
class Snake: Animal {
    init() {
        super.init(name: "Snake", sound: "hiss", habitat: "desert", diet: "carnivorous", soundFileName: "snake-hiss")
    }

    override func uniqueBehavior() -> String {
        return "can shed its skin."
    }
}

// Child class: Horse
class Horse: Animal {
    init() {
        super.init(name: "Horse", sound: "neigh", habitat: "grasslands", diet: "herbivorous", soundFileName: "horse-neigh")
    }

    override func uniqueBehavior() -> String {
        return "sleep standing up."
    }
}
