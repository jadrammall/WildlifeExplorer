//
//  ViewController.swift
//  WildlifeExplorer
//
//  Created by Jad Rammal on 20/09/2024.
//

import UIKit
import AVFoundation

class IntroViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound()
    }
    
    @IBAction func onExploreButtonTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let animalViewController = storyboard.instantiateViewController(withIdentifier: "AnimalViewController") as? AnimalViewController {
            self.navigationController?.pushViewController(animalViewController, animated: true)
        }
    }
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "nature-birds-singing", withExtension: "mp3") else { return }
        
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
    
    // Stop the sound when the view is about to disappear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if let player = player, player.isPlaying {
            player.stop()
        }
    }
}

