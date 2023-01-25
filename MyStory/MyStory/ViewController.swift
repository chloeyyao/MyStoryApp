//
//  ViewController.swift
//  MyStory
//
//  Created by Chloe Yao on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    //models
    let origin = InfoPage(image: UIImage(named: "leto-image")!, info: "Artemis was born to the greek gods Zeus and Leto. She has a younger twin brother named Apollo. It is said that as soon as Artemis was born, she helped her mother give birth to her brother.")
    
    let abilities = InfoPage(image: UIImage(named: "artemis and stag")!, info: "A few abilities possessed by Artemis include shapeshifting, archery, hunting, tracking, magic, and medicine. Symbols of Artemis include the bow and arrow, a quiver, and hunting knives. The deer and cyprus are sacred to her.")
    
    let responsibilites = InfoPage(image: UIImage(named: "Artemis hunt")!, info: "Artemis is the goddess of the hunt, childbirth, chastity, and nature. As the goddess of the hunt, Artemis is known for hunting wild animals, but also for her vengeance and impulsiveness in hunting other gods, goddesses, and humans.")
    
    var infos: [InfoPage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        infos = [origin, abilities, responsibilites]
    }
    
    var buttonPressed = 0;

    
    @IBAction func originPressed(_ sender: UIButton) {
        buttonPressed = 1
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    @IBAction func abilitiesPressed(_ sender: UIButton) {
        buttonPressed = 2
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    @IBAction func responsibilitiesPressed(_ sender: UIButton) {
        buttonPressed = 3
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue",
            let detailViewController = segue.destination as? DetailViewController {
            if buttonPressed == 1 {
                detailViewController.info = infos[0]
            } else if buttonPressed == 2 {
                detailViewController.info = infos[1]
            } else if buttonPressed == 3 {
                detailViewController.info = infos[2]
            } else {
                print("Check your selection")
            }
        }
    }
    
}

