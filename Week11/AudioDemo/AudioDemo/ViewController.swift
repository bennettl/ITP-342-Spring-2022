//
//  ViewController.swift
//  AudioDemo
//
//  Created by lee bennett on 4/6/22.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController {

    var soundId: SystemSoundID = 0
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Finding the audio file inside our xcode using the Bundle
        let path = Bundle.main.path(forResource: "chordA", ofType: "wav")!
        let url = URL(fileURLWithPath: path) as! CFURL
        
        AudioServicesCreateSystemSoundID(url, &soundId)
        
        
        let electricIntroPath = Bundle.main.path(forResource: "electricIntro", ofType: "wav")!
        let electricIntroUrl = URL(fileURLWithPath: electricIntroPath)

        player = try! AVAudioPlayer(contentsOf: electricIntroUrl)
        player.prepareToPlay()
    }
    
    // System Sound Services - short sound effects
    @IBAction func playChordDidTapped(_ sender: UIButton) {

        AudioServicesPlaySystemSound(soundId)
    }
    
    // AVFoundation - longer term running audio
    @IBAction func playIntroDidTapped(_ sender: UIButton) {
        player.play()
    }
    

}

