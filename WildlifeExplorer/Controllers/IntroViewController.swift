//
//  ViewController.swift
//  WildlifeExplorer
//
//  Created by Jad Rammal on 20/09/2024.
//

import UIKit

class IntroViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onExploreButtonTap(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let animalViewController = storyboard.instantiateViewController(withIdentifier: "AnimalViewController") as? AnimalViewController {
            self.navigationController?.pushViewController(animalViewController, animated: true)
        }
    }
    
}

