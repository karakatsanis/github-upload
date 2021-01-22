//
//  LeaqueVC.swift
//  SwooshApp
//
//  Created by Karakatsanis Georgios on 21/04/2020.
//  Copyright © 2020 Wrk.gr. All rights reserved.
//new line


import UIKit

class LeaqueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSeque", sender: self)
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeque(lequeType: "mens")
        
        //player.desiredLeaque = "mens"
        //nextBtn.isEnabled = true
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeque(lequeType: "womens")
        //player.desiredLeaque = "womens"
        //nextBtn.isEnabled = true
    }
    @IBAction func OnCoEdTapped(_ sender: Any) {
        selectLeque(lequeType: "coed")
        //player.desiredLeaque = "coed"
        //nextBtn.isEnabled = true
        
    }
    
    func selectLeque(lequeType: String){
        player.desiredLeaque = lequeType
        nextBtn.isEnabled = true
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC  = segue.destination as? SkillVC {
            
            skillVC.player = player
            
        }
    }

}
