//
//  AnimalViewController.swift
//  WildlifeExplorer
//
//  Created by Jad Rammal on 20/09/2024.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var soundLabel: UILabel!
    @IBOutlet weak var habitatLabel: UILabel!
    @IBOutlet weak var dietLabel: UILabel!
    @IBOutlet weak var behaviorLabel: UILabel!
    
    let animals: [Animal] = [Lion(), Snake(), Horse()]
    var selectedAnimal: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        if selectedAnimal == nil {
            animalImageView.image = nil
            nameLabel.text = ""
            soundLabel.text = ""
            habitatLabel.text = ""
            dietLabel.text = ""
            behaviorLabel.text = ""
        }
    }
    
    @IBAction func onRandomButtonTap(_ sender: Any) {
        selectedAnimal = animals.randomElement()
        if let animal = selectedAnimal {
            animalImageView.image = UIImage(named: "\(animal.name.lowercased())")
            nameLabel.text = "Name: \(animal.name)"
            soundLabel.text = "Sound: \(animal.sound)"
            habitatLabel.text = "Habitat: \(animal.habitat)"
            dietLabel.text = "Diet: \(animal.diet)"
            behaviorLabel.text = "Special Behavior: \(animal.uniqueBehavior())"
        }
    }
}
