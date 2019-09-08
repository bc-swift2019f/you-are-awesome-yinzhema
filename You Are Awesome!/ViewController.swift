//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by MYZ on 9/1/19.
//  Copyright © 2019 Yinzhe Ma. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var imageLabel: UIImageView!
    
    var awesomePlayer=AVAudioPlayer()
    var numberOfSounds=6
    var soundIndex=0
    var messageIndex=0
    var numberOfImages=10
    var imageIndex=0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func playSound(soundName:String)  {
        if let sound=NSDataAsset(name: soundName){
            //use if let to see if the file soundName exists
            do{
                try awesomePlayer=AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch{
                //if sound.data is not valid
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
        }else{
            //if sound does not work, print out an error
            print("Error: file\(soundName) didn't load")
        }
    }
    
    func indexCreator(Index: Int, length:Int) -> Int {
        var newIndex: Int
        repeat{
            newIndex=Int.random(in:0...length-1)
        } while Index==newIndex
        
        return newIndex
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages=["You Are Fantastic!!",
                      "You Are Great!!",
                      "You Are Amazing!!",
                      "When the Genius Bar needs help, they call you!",
                      "You've got the design skills of Jony Ive",
                      "You Are Da Bomb",
                      "You Are Tremendous",
                      "You Brighten my day!!",
                      "Hey, fabulous"]
        let colors=[UIColor.blue,
                    UIColor.black,
                    UIColor.red,
                    UIColor.brown,
                    UIColor.darkGray,
                    UIColor.green,
                    UIColor.orange,
                    UIColor.purple,
                    UIColor.yellow]
        
        //var newIndex = -1 //declare and initialize at the same time
        //var newIndex: Int //declares but doesnt initialize newIndex
        
        //show a message
        messageIndex=indexCreator(Index: messageIndex, length: messages.count)
        messageLabel.text=messages[messageIndex]
        messageLabel.textColor=colors[messageIndex]
        
        //show an image
        imageIndex=indexCreator(Index: imageIndex, length: numberOfImages)
        imageLabel.image=UIImage(named:"image\(imageIndex)")
        
        //play a sound
        soundIndex=indexCreator(Index: soundIndex, length: numberOfSounds)
        playSound(soundName: "sound\(soundIndex)")
    }
    
}

