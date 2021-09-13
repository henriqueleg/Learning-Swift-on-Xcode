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

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender)
        

    }
    
    func playSound(_ button:UIButton) {
        guard let buttonTitle = button.currentTitle else { return }
        let url = Bundle.main.url(forResource: buttonTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.volume = 0.1
        button.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.alpha = 1
        }
        player.play()
    }
}
