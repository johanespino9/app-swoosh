//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Johan Carp on 3/25/20.
//  Copyright © 2020 Johan Espino. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        nextBtn.isEnabled = false
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeagueType(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeagueType(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeagueType(leagueType: "coed")
    }
    
    func selectLeagueType(leagueType: String) {
        player.desireLeague = leagueType
        nextBtn.isEnabled = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
