//
//  ViewController.swift
//  MarioParty
//
//  Created by Dalal Alhazeem on 3/24/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    
     @IBOutlet weak var playerImageView: UIImageView!
    var playerSoundEffect: AVAudioPlayer?
    var backgroundMusic :  AVAudioPlayer?
    
    override func viewDidLoad() {
        let path = Bundle.main.path(forResource: "BG.wav", ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
           playerSoundEffect = try AVAudioPlayer(contentsOf: url)
            playerSoundEffect?.play()
        } catch {
            // couldn't load file :(
        }
        super.viewDidLoad()
    
        
    }
    
    
    func playBackgroundMusic(musicName:String) {
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            backgroundMusic = try AVAudioPlayer(contentsOf: url)
            backgroundMusic?.play()
        } catch {
            // couldn't load file :(
        }
        
        
    }
    
    @IBAction func randomPlayer(_ sender: Any) {
        let randomPlayer = players.randomElement()!
        playerImageView.image = UIImage(named: randomPlayer.name)
        playBackgroundMusic(musicName: randomPlayer.musicName())
        selectedPlayer = randomPlayer
        
    }
    
   

  
    
    
   

    
    
    
  
}

