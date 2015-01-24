//
//  ViewController.swift
//  GamePiano
//
//  Created by Армеев on 02/01/15.
//  Copyright (c) 2015 home. All rights reserved.
//

import UIKit
import AVFoundation
import SpriteKit

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("sound2", ofType: "m4a")!)
        println(alertSound)
        
        // Removed deprecated use of AVAudioSessionDelegate protocol
        AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, error: nil)
        AVAudioSession.sharedInstance().setActive(true, error: nil)
        
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //черные outlet-кнопки
    @IBOutlet weak var BlackButton1: UIButton!
    @IBOutlet weak var BlackButton2: UIButton!
    @IBOutlet weak var BlackButton3: UIButton!
    @IBOutlet weak var BlackButton4: UIButton!
    @IBOutlet weak var BlackButton5: UIButton!
    
    //белые outlet-кнопки
    @IBOutlet weak var WhiteButton1: UIButton!
    @IBOutlet weak var WhiteButton2: UIButton!
    @IBOutlet weak var WhiteButton3: UIButton!
    @IBOutlet weak var WhiteButton4: UIButton!
    @IBOutlet weak var WhiteButton5: UIButton!
    @IBOutlet weak var WhiteButton6: UIButton!
    @IBOutlet weak var WhiteButton7: UIButton!
    @IBOutlet weak var WhiteButton8: UIButton!
    @IBOutlet weak var WhiteButton9: UIButton!
    @IBOutlet weak var WhiteButton10: UIButton!
    @IBOutlet weak var WhiteButton11: UIButton!
    @IBOutlet weak var WhiteButton12: UIButton!
    @IBOutlet weak var WhiteButton13: UIButton!
    @IBOutlet weak var WhiteButton14: UIButton!
    @IBOutlet weak var WhiteButton15: UIButton!
    
    //черные action-кнопки    
    @IBAction func Black1Pressed(sender: UIButton) {
        if (BlackButton1.center.y>315){
            audioPlayer.play()
            
            BlackButton1.center = CGPoint (x:BlackButton1.center.x, y:BlackButton1.center.y+109)
            WhiteButton1.center = CGPoint (x:WhiteButton1.center.x, y:WhiteButton1.center.y+109)
            WhiteButton2.center = CGPoint (x:WhiteButton2.center.x, y:WhiteButton2.center.y+109)
            WhiteButton3.center = CGPoint (x:WhiteButton3.center.x, y:WhiteButton3.center.y+109)
            
            BlackButton2.center = CGPoint (x:BlackButton2.center.x, y:BlackButton2.center.y+109)
            WhiteButton4.center = CGPoint (x:WhiteButton4.center.x, y:WhiteButton4.center.y+109)
            WhiteButton5.center = CGPoint (x:WhiteButton5.center.x, y:WhiteButton5.center.y+109)
            WhiteButton6.center = CGPoint (x:WhiteButton6.center.x, y:WhiteButton6.center.y+109)
            
            BlackButton3.center = CGPoint (x:BlackButton3.center.x, y:BlackButton3.center.y+109)
            WhiteButton7.center = CGPoint (x:WhiteButton7.center.x, y:WhiteButton7.center.y+109)
            WhiteButton8.center = CGPoint (x:WhiteButton8.center.x, y:WhiteButton8.center.y+109)
            WhiteButton9.center = CGPoint (x:WhiteButton9.center.x, y:WhiteButton9.center.y+109)
            
            BlackButton4.center = CGPoint (x:BlackButton4.center.x, y:BlackButton4.center.y+109)
            WhiteButton10.center = CGPoint (x:WhiteButton10.center.x, y:WhiteButton10.center.y+109)
            WhiteButton11.center = CGPoint (x:WhiteButton11.center.x, y:WhiteButton11.center.y+109)
            WhiteButton12.center = CGPoint (x:WhiteButton12.center.x, y:WhiteButton12.center.y+109)
            
            BlackButton5.center = CGPoint (x:BlackButton5.center.x, y:BlackButton5.center.y+109)
            WhiteButton13.center = CGPoint (x:WhiteButton13.center.x, y:WhiteButton13.center.y+109)
            WhiteButton14.center = CGPoint (x:WhiteButton14.center.x, y:WhiteButton14.center.y+109)
            WhiteButton15.center = CGPoint (x:WhiteButton15.center.x, y:WhiteButton15.center.y+109)
        
            if (BlackButton1.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton1.center = CGPoint(x:200, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton1.center = CGPoint(x:280, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton2.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton2.center = CGPoint(x:120, y:-54.5)
                    WhiteButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton2.center = CGPoint(x:280, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton3.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton3.center = CGPoint(x:40, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton3.center = CGPoint(x:120, y:-54.5)
                    WhiteButton7.center = CGPoint(x:40, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton3.center = CGPoint(x:200, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton3.center = CGPoint(x:280, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton4.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton10.center = CGPoint(x:40, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton4.center = CGPoint(x:200, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton4.center = CGPoint(x:280, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton5.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton5.center = CGPoint(x:120, y:-54.5)
                    WhiteButton13.center = CGPoint(x:40, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton5.center = CGPoint(x:280, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
        }
    }
    
    @IBAction func Black2Pressed(sender: UIButton) {
        if (BlackButton2.center.y>315){
            audioPlayer.play()
            
            BlackButton1.center = CGPoint (x:BlackButton1.center.x, y:BlackButton1.center.y+109)
            WhiteButton1.center = CGPoint (x:WhiteButton1.center.x, y:WhiteButton1.center.y+109)
            WhiteButton2.center = CGPoint (x:WhiteButton2.center.x, y:WhiteButton2.center.y+109)
            WhiteButton3.center = CGPoint (x:WhiteButton3.center.x, y:WhiteButton3.center.y+109)
            
            BlackButton2.center = CGPoint (x:BlackButton2.center.x, y:BlackButton2.center.y+109)
            WhiteButton4.center = CGPoint (x:WhiteButton4.center.x, y:WhiteButton4.center.y+109)
            WhiteButton5.center = CGPoint (x:WhiteButton5.center.x, y:WhiteButton5.center.y+109)
            WhiteButton6.center = CGPoint (x:WhiteButton6.center.x, y:WhiteButton6.center.y+109)
            
            BlackButton3.center = CGPoint (x:BlackButton3.center.x, y:BlackButton3.center.y+109)
            WhiteButton7.center = CGPoint (x:WhiteButton7.center.x, y:WhiteButton7.center.y+109)
            WhiteButton8.center = CGPoint (x:WhiteButton8.center.x, y:WhiteButton8.center.y+109)
            WhiteButton9.center = CGPoint (x:WhiteButton9.center.x, y:WhiteButton9.center.y+109)
            
            BlackButton4.center = CGPoint (x:BlackButton4.center.x, y:BlackButton4.center.y+109)
            WhiteButton10.center = CGPoint (x:WhiteButton10.center.x, y:WhiteButton10.center.y+109)
            WhiteButton11.center = CGPoint (x:WhiteButton11.center.x, y:WhiteButton11.center.y+109)
            WhiteButton12.center = CGPoint (x:WhiteButton12.center.x, y:WhiteButton12.center.y+109)
            
            BlackButton5.center = CGPoint (x:BlackButton5.center.x, y:BlackButton5.center.y+109)
            WhiteButton13.center = CGPoint (x:WhiteButton13.center.x, y:WhiteButton13.center.y+109)
            WhiteButton14.center = CGPoint (x:WhiteButton14.center.x, y:WhiteButton14.center.y+109)
            WhiteButton15.center = CGPoint (x:WhiteButton15.center.x, y:WhiteButton15.center.y+109)
            
            if (BlackButton1.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton1.center = CGPoint(x:200, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton1.center = CGPoint(x:280, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton2.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton2.center = CGPoint(x:120, y:-54.5)
                    WhiteButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton2.center = CGPoint(x:280, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton3.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton3.center = CGPoint(x:40, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton3.center = CGPoint(x:120, y:-54.5)
                    WhiteButton7.center = CGPoint(x:40, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton3.center = CGPoint(x:200, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton3.center = CGPoint(x:280, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton4.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton10.center = CGPoint(x:40, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton4.center = CGPoint(x:200, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton4.center = CGPoint(x:280, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton5.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton5.center = CGPoint(x:120, y:-54.5)
                    WhiteButton13.center = CGPoint(x:40, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton5.center = CGPoint(x:280, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
        }
    }
    
    @IBAction func Black3Pressed(sender: UIButton) {
       
        if (BlackButton3.center.y>315){
            audioPlayer.play()
            
            BlackButton1.center = CGPoint (x:BlackButton1.center.x, y:BlackButton1.center.y+109)
            WhiteButton1.center = CGPoint (x:WhiteButton1.center.x, y:WhiteButton1.center.y+109)
            WhiteButton2.center = CGPoint (x:WhiteButton2.center.x, y:WhiteButton2.center.y+109)
            WhiteButton3.center = CGPoint (x:WhiteButton3.center.x, y:WhiteButton3.center.y+109)
            
            BlackButton2.center = CGPoint (x:BlackButton2.center.x, y:BlackButton2.center.y+109)
            WhiteButton4.center = CGPoint (x:WhiteButton4.center.x, y:WhiteButton4.center.y+109)
            WhiteButton5.center = CGPoint (x:WhiteButton5.center.x, y:WhiteButton5.center.y+109)
            WhiteButton6.center = CGPoint (x:WhiteButton6.center.x, y:WhiteButton6.center.y+109)
            
            BlackButton3.center = CGPoint (x:BlackButton3.center.x, y:BlackButton3.center.y+109)
            WhiteButton7.center = CGPoint (x:WhiteButton7.center.x, y:WhiteButton7.center.y+109)
            WhiteButton8.center = CGPoint (x:WhiteButton8.center.x, y:WhiteButton8.center.y+109)
            WhiteButton9.center = CGPoint (x:WhiteButton9.center.x, y:WhiteButton9.center.y+109)
            
            BlackButton4.center = CGPoint (x:BlackButton4.center.x, y:BlackButton4.center.y+109)
            WhiteButton10.center = CGPoint (x:WhiteButton10.center.x, y:WhiteButton10.center.y+109)
            WhiteButton11.center = CGPoint (x:WhiteButton11.center.x, y:WhiteButton11.center.y+109)
            WhiteButton12.center = CGPoint (x:WhiteButton12.center.x, y:WhiteButton12.center.y+109)
            
            BlackButton5.center = CGPoint (x:BlackButton5.center.x, y:BlackButton5.center.y+109)
            WhiteButton13.center = CGPoint (x:WhiteButton13.center.x, y:WhiteButton13.center.y+109)
            WhiteButton14.center = CGPoint (x:WhiteButton14.center.x, y:WhiteButton14.center.y+109)
            WhiteButton15.center = CGPoint (x:WhiteButton15.center.x, y:WhiteButton15.center.y+109)
            
            if (BlackButton1.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton1.center = CGPoint(x:200, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton1.center = CGPoint(x:280, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton2.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton2.center = CGPoint(x:120, y:-54.5)
                    WhiteButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton2.center = CGPoint(x:280, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton3.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton3.center = CGPoint(x:40, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton3.center = CGPoint(x:120, y:-54.5)
                    WhiteButton7.center = CGPoint(x:40, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton3.center = CGPoint(x:200, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton3.center = CGPoint(x:280, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton4.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton10.center = CGPoint(x:40, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton4.center = CGPoint(x:200, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton4.center = CGPoint(x:280, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton5.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton5.center = CGPoint(x:120, y:-54.5)
                    WhiteButton13.center = CGPoint(x:40, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton5.center = CGPoint(x:280, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
        }
    }
    
    @IBAction func Black4Pressed(sender: UIButton) {
       
        if (BlackButton4.center.y>315){
            audioPlayer.play()
            
            BlackButton1.center = CGPoint (x:BlackButton1.center.x, y:BlackButton1.center.y+109)
            WhiteButton1.center = CGPoint (x:WhiteButton1.center.x, y:WhiteButton1.center.y+109)
            WhiteButton2.center = CGPoint (x:WhiteButton2.center.x, y:WhiteButton2.center.y+109)
            WhiteButton3.center = CGPoint (x:WhiteButton3.center.x, y:WhiteButton3.center.y+109)
            
            BlackButton2.center = CGPoint (x:BlackButton2.center.x, y:BlackButton2.center.y+109)
            WhiteButton4.center = CGPoint (x:WhiteButton4.center.x, y:WhiteButton4.center.y+109)
            WhiteButton5.center = CGPoint (x:WhiteButton5.center.x, y:WhiteButton5.center.y+109)
            WhiteButton6.center = CGPoint (x:WhiteButton6.center.x, y:WhiteButton6.center.y+109)
            
            BlackButton3.center = CGPoint (x:BlackButton3.center.x, y:BlackButton3.center.y+109)
            WhiteButton7.center = CGPoint (x:WhiteButton7.center.x, y:WhiteButton7.center.y+109)
            WhiteButton8.center = CGPoint (x:WhiteButton8.center.x, y:WhiteButton8.center.y+109)
            WhiteButton9.center = CGPoint (x:WhiteButton9.center.x, y:WhiteButton9.center.y+109)
            
            BlackButton4.center = CGPoint (x:BlackButton4.center.x, y:BlackButton4.center.y+109)
            WhiteButton10.center = CGPoint (x:WhiteButton10.center.x, y:WhiteButton10.center.y+109)
            WhiteButton11.center = CGPoint (x:WhiteButton11.center.x, y:WhiteButton11.center.y+109)
            WhiteButton12.center = CGPoint (x:WhiteButton12.center.x, y:WhiteButton12.center.y+109)
            
            BlackButton5.center = CGPoint (x:BlackButton5.center.x, y:BlackButton5.center.y+109)
            WhiteButton13.center = CGPoint (x:WhiteButton13.center.x, y:WhiteButton13.center.y+109)
            WhiteButton14.center = CGPoint (x:WhiteButton14.center.x, y:WhiteButton14.center.y+109)
            WhiteButton15.center = CGPoint (x:WhiteButton15.center.x, y:WhiteButton15.center.y+109)
            
            if (BlackButton1.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton1.center = CGPoint(x:200, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton1.center = CGPoint(x:280, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton2.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton2.center = CGPoint(x:120, y:-54.5)
                    WhiteButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton2.center = CGPoint(x:280, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton3.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton3.center = CGPoint(x:40, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton3.center = CGPoint(x:120, y:-54.5)
                    WhiteButton7.center = CGPoint(x:40, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton3.center = CGPoint(x:200, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton3.center = CGPoint(x:280, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton4.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton10.center = CGPoint(x:40, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton4.center = CGPoint(x:200, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton4.center = CGPoint(x:280, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton5.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton5.center = CGPoint(x:120, y:-54.5)
                    WhiteButton13.center = CGPoint(x:40, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton5.center = CGPoint(x:280, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
        }
    }
    
    @IBAction func Black5Pressed(sender: UIButton) {
        
        if (BlackButton5.center.y>315){
            audioPlayer.play()
            
            BlackButton1.center = CGPoint (x:BlackButton1.center.x, y:BlackButton1.center.y+109)
            WhiteButton1.center = CGPoint (x:WhiteButton1.center.x, y:WhiteButton1.center.y+109)
            WhiteButton2.center = CGPoint (x:WhiteButton2.center.x, y:WhiteButton2.center.y+109)
            WhiteButton3.center = CGPoint (x:WhiteButton3.center.x, y:WhiteButton3.center.y+109)
            
            BlackButton2.center = CGPoint (x:BlackButton2.center.x, y:BlackButton2.center.y+109)
            WhiteButton4.center = CGPoint (x:WhiteButton4.center.x, y:WhiteButton4.center.y+109)
            WhiteButton5.center = CGPoint (x:WhiteButton5.center.x, y:WhiteButton5.center.y+109)
            WhiteButton6.center = CGPoint (x:WhiteButton6.center.x, y:WhiteButton6.center.y+109)
            
            BlackButton3.center = CGPoint (x:BlackButton3.center.x, y:BlackButton3.center.y+109)
            WhiteButton7.center = CGPoint (x:WhiteButton7.center.x, y:WhiteButton7.center.y+109)
            WhiteButton8.center = CGPoint (x:WhiteButton8.center.x, y:WhiteButton8.center.y+109)
            WhiteButton9.center = CGPoint (x:WhiteButton9.center.x, y:WhiteButton9.center.y+109)
            
            BlackButton4.center = CGPoint (x:BlackButton4.center.x, y:BlackButton4.center.y+109)
            WhiteButton10.center = CGPoint (x:WhiteButton10.center.x, y:WhiteButton10.center.y+109)
            WhiteButton11.center = CGPoint (x:WhiteButton11.center.x, y:WhiteButton11.center.y+109)
            WhiteButton12.center = CGPoint (x:WhiteButton12.center.x, y:WhiteButton12.center.y+109)
            
            BlackButton5.center = CGPoint (x:BlackButton5.center.x, y:BlackButton5.center.y+109)
            WhiteButton13.center = CGPoint (x:WhiteButton13.center.x, y:WhiteButton13.center.y+109)
            WhiteButton14.center = CGPoint (x:WhiteButton14.center.x, y:WhiteButton14.center.y+109)
            WhiteButton15.center = CGPoint (x:WhiteButton15.center.x, y:WhiteButton15.center.y+109)
            
            if (BlackButton1.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton1.center = CGPoint(x:40, y:-54.5)
                    WhiteButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton1.center = CGPoint(x:200, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton1.center = CGPoint(x:280, y:-54.5)
                    WhiteButton1.center = CGPoint(x:120, y:-54.5)
                    WhiteButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton3.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton2.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton2.center = CGPoint(x:40, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton2.center = CGPoint(x:120, y:-54.5)
                    WhiteButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton2.center = CGPoint(x:200, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton2.center = CGPoint(x:280, y:-54.5)
                    WhiteButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton6.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton3.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton3.center = CGPoint(x:40, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton3.center = CGPoint(x:120, y:-54.5)
                    WhiteButton7.center = CGPoint(x:40, y:-54.5)
                    WhiteButton8.center = CGPoint(x:200, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton3.center = CGPoint(x:200, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton3.center = CGPoint(x:280, y:-54.5)
                    WhiteButton7.center = CGPoint(x:120, y:-54.5)
                    WhiteButton8.center = CGPoint(x:40, y:-54.5)
                    WhiteButton9.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton4.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton4.center = CGPoint(x:40, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton4.center = CGPoint(x:120, y:-54.5)
                    WhiteButton10.center = CGPoint(x:40, y:-54.5)
                    WhiteButton11.center = CGPoint(x:200, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton4.center = CGPoint(x:200, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton4.center = CGPoint(x:280, y:-54.5)
                    WhiteButton10.center = CGPoint(x:120, y:-54.5)
                    WhiteButton11.center = CGPoint(x:40, y:-54.5)
                    WhiteButton12.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
            
            if (BlackButton5.center.y >= 480){
                var number : Int = Int(rand()) % 4
                switch number {
                case 0:
                    BlackButton5.center = CGPoint(x:40, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 1:
                    BlackButton5.center = CGPoint(x:120, y:-54.5)
                    WhiteButton13.center = CGPoint(x:40, y:-54.5)
                    WhiteButton14.center = CGPoint(x:200, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 2:
                    BlackButton5.center = CGPoint(x:200, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:280, y:-54.5)
                case 3:
                    BlackButton5.center = CGPoint(x:280, y:-54.5)
                    WhiteButton13.center = CGPoint(x:120, y:-54.5)
                    WhiteButton14.center = CGPoint(x:40, y:-54.5)
                    WhiteButton15.center = CGPoint(x:200, y:-54.5)
                default:
                    break;
                }
            }
        }
    }

    //белые action-кнопки
    
    @IBAction func White1Pressed(sender: UIButton) {
        

    }


}

