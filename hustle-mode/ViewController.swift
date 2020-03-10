//
//  ViewController.swift
//  hustle-mode
//
//  Created by Lebo on 2020/03/10.
//  Copyright © 2020 Lebo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
//    connecting ui labels with code
    @IBOutlet weak var DarkBlueBG: UIImageView!
    @IBOutlet weak var PowerBtn: UIButton!
    @IBOutlet weak var Cloudholder: UIView!
    @IBOutlet weak var Rocket: UIImageView!
    @IBOutlet weak var hustlelb: UILabel!
    @IBOutlet weak var Onlb: UILabel!
    
    var player: AVAudioPlayer!
    
//    app entry point
    override func viewDidLoad() {
        super.viewDidLoad()

    }
//      power button when pressed
    @IBAction func PowerButtonPressed(_ sender: Any) {
        Cloudholder.isHidden = false
        DarkBlueBG.isHidden = true
        PowerBtn.isHidden = true
        
        UIView.animate(withDuration: 2.3, animations:  {
            self.Rocket.frame = CGRect(x: 0, y: 20, width: 586, height:1194)
        })
        {   (finished) in
        self.hustlelb.isHidden = true
        self.Onlb.isHidden = false
        }
        
        if let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav") {
        let url = URL(fileURLWithPath: path)
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.play()
            } catch let error as NSError {
                print (error.description)
            }
        }
    }
    
}

