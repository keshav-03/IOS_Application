//
//  ViewController.swift
//  Pitcher
//
//  Created by KD on 25/01/22.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var stopRecord: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Welcome to app development")
        
        
    }
    

    @IBAction func recordAudio(_ sender: Any) {
        print("record button was pressed")
        recordingLabel.text = "Recording in progress"
    }

    @IBAction func stopRecording(_ sender: Any) {
        
        
    }
}

