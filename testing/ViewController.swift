//
//  ViewController.swift
//  testing
//
//  Created by Anil on 08/04/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func play(sender: AnyObject) {
        var audioPath = NSString(string: NSBundle.mainBundle().pathForResource("1", ofType: "mp3")!)
        
        var error: NSError? = nil
        
        //instantiate the player
        player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath as String), error: &error)
        player.prepareToPlay()
        player.play()
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        player.pause()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

