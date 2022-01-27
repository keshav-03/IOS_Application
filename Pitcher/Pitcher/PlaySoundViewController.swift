//
//  PlaySoundViewController.swift
//  Pitcher
//
//  Created by KD on 27/01/22.
//

import UIKit
import AVFoundation

class PlaySoundViewController: UIViewController {

    //Outlets
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: URL!
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stoper: Timer!
    
    //Actions
    @IBAction func playSoundForButton(_ sender: UIButton) {
        print("Play Sound button pressed")
    }
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        print("stop audio button pressed")
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
