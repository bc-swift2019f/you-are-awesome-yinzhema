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
//        let images=["image0",
//                    "image1",
//                    "image2",
//                    "image3",
//                    "image4",
//                    "image5",
//                    "image6",
//                    "image7",
//                    "image8",
//                    "image9"
//        ]
        
        //var newIndex = -1 //declare and initialize at the same time
        var newIndex: Int //declares but doesnt initialize newIndex
        
        //show a message
        repeat{
            newIndex=Int.random(in: 0...messages.count-1)
        } while newIndex==messageIndex
        
        messageIndex=newIndex
        messageLabel.text=messages[messageIndex]
        messageLabel.textColor=colors[messageIndex]
        
        //show an image
        repeat{
            newIndex=Int.random(in:0..<numberOfImages)
        } while imageIndex==newIndex
        
        imageIndex=newIndex
        //imageLabel.image=UIImage(named:images[index])
        imageLabel.image=UIImage(named:"image\(imageIndex)")
        
        //play a sound
        repeat{
            newIndex=Int.random(in: 0..<numberOfSounds)
        } while soundIndex==newIndex
        
        soundIndex=newIndex
        var soundName="sound\(soundIndex)"
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
    
}

