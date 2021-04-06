//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
        }
 
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let buttonTitle = sender.title(for: .normal) {
            playSound(sender: buttonTitle)
          }
    }
    func playSound(sender: String){
        let url = Bundle.main.url(forResource: sender , withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
   

    
}

