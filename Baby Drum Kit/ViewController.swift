//
//  ViewController.swift
//  Baby Drum Kit
//
//  Created by Rosario Tarabocchia on 9/25/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    let sound1URL = NSBundle.mainBundle().URLForResource("1", withExtension: "wav")
    let sound2URL = NSBundle.mainBundle().URLForResource("2", withExtension: "wav")
    let sound3URL = NSBundle.mainBundle().URLForResource("3", withExtension: "wav")
    let sound4URL = NSBundle.mainBundle().URLForResource("4", withExtension: "wav")
    let sound5URL = NSBundle.mainBundle().URLForResource("5", withExtension: "wav")
    let sound6URL = NSBundle.mainBundle().URLForResource("6", withExtension: "wav")
    let sound7URL = NSBundle.mainBundle().URLForResource("7", withExtension: "wav")
    let sound8URL = NSBundle.mainBundle().URLForResource("8", withExtension: "wav")
    
    var sound1: SystemSoundID = 0
    var sound2: SystemSoundID = 0
    var sound3: SystemSoundID = 0
    var sound4: SystemSoundID = 0
    var sound5: SystemSoundID = 0
    var sound6: SystemSoundID = 0
    var sound7: SystemSoundID = 0
    var sound8: SystemSoundID = 0
    
    @IBOutlet weak var screenImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        AudioServicesCreateSystemSoundID(sound1URL!, &sound1)
        AudioServicesCreateSystemSoundID(sound2URL!, &sound2)
        AudioServicesCreateSystemSoundID(sound3URL!, &sound3)
        AudioServicesCreateSystemSoundID(sound4URL!, &sound4)
        AudioServicesCreateSystemSoundID(sound5URL!, &sound5)
        AudioServicesCreateSystemSoundID(sound6URL!, &sound6)
        AudioServicesCreateSystemSoundID(sound7URL!, &sound7)
        AudioServicesCreateSystemSoundID(sound8URL!, &sound8)
        
        loadImageScreen()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    @IBAction func btn1ACTION(sender: UIButton) {
        
        AudioServicesPlaySystemSound(sound1)
    }
    
    
    @IBAction func btn2ACTION(sender: UIButton) {
        AudioServicesPlaySystemSound(sound2)
    }
    
    
    @IBAction func btn3ACTION(sender: UIButton) {
        AudioServicesPlaySystemSound(sound3)
    }
    
    
    @IBAction func btn4ACTION(sender: UIButton) {
        AudioServicesPlaySystemSound(sound4)
    }
    
    
    @IBAction func btn5ACTION(sender: UIButton) {
        AudioServicesPlaySystemSound(sound5)
    }
    
    
    @IBAction func btn6ACTION(sender: UIButton) {
        AudioServicesPlaySystemSound(sound6)
    }
    
    
    @IBAction func btn7ACTION(sender: UIButton) {
        AudioServicesPlaySystemSound(sound7)
    }
    
    
    @IBAction func btn8ACTION(sender: UIButton) {
        AudioServicesPlaySystemSound(sound8)
    }

    
    func loadImageScreen () {
        
        
        if view.frame.size.height < 500 {
            
            screenImageView.image = UIImage(named:"4sbabydrum1")
            
        }
        
        else if view.frame.size.height < 600 {
            
            screenImageView.image = UIImage(named:"5sbabydrum1")!
            
        }
        
        else if view.frame.size.height < 700 {
            
            screenImageView.image = UIImage(named:"6sbabydrum1")!
            
        }
        
        else {
            
            screenImageView.image = UIImage(named:"6plusbabydrum1")!
            
        }
        
       
        
    }
    
   
    }

