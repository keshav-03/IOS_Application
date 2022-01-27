//
//  PlaySoundViewController+Audio.swift
//  Pitcher
//
//  Created by KD on 27/01/22.
//
import UIKit
import Foundation
import AVFAudio


extension PlaySoundViewController: AVAudioRecorderDelegate {
    
    //Alerts
    struct Alerts {
        static let DismissAlert = "Dismiss"
        static let RecordingDisabledTitle = "Recording Disabled"
        static let RecordingDisabledMessage = "You've disabled this app from recording your microphone. Check settings"
        static let RecordingFailedTitle = "Recording Failed"
        static let RecordingFailedMessage = "Something went wrong with your recording."
        static let AudioRecorderError = "Audio Recorder Error"
        static let AudioSessionError = "Audio session Error"
        static let AudioRecordingError = "Audio Recording Error"
        static let AudioFileError = "Audio File Error"
        static let AudioEngineError = "Audio Engine Error"
    }
    
    enum PlayingState { case playing, notPlaying}
    
    //initialize recording audio file
    func setupAudio() {
        do {
            audioFile = try AVAudioFile(forReading: recordedAudioURL as URL)
        } catch {
            showAlert(Alerts.AudioFileError, message: String(describing: error))
        }
    }
    
    //MARK: Configure UI
    func configureUI(_ playState: PlayingState) {
        switch(playState) {
        case .notPlaying:
//            setPlayButtonEnabled(true)
            stopButton.isEnabled = false
        case .playing:
//            setPlayButtonEnabled(false)
            stopButton.isEnabled = true
        }
    }
    
    //MARK: showAlert message
    func showAlert(_ title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: Alerts.DismissAlert, style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
