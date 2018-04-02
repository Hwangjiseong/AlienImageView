//
//  ViewController.swift
//  AlienImageView
//
//  Created by D7703_02 on 2018. 4. 2..
//  Copyright © 2018년 D7703_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myImageView: UIImageView!
    
    var counter = 1
    var direction = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //첫번째 이미지를 로드함
        myImageView.image = UIImage(named: "frame1.png")
        
    }
    
    @IBAction func imageUpdate(_ sender: UIButton) {
      
      //  if counter == 5{
      //      counter = 1
      //  }else {
      //      counter = counter + 1
      //  }
      //  myImageView.image = UIImage(named: "frame\(counter).png")
        
        if counter == 5{
            direction = 0
        }
        else if counter == 1{
            direction = 1
        }
        if direction == 1{
            counter += 1
        }
        else if direction == 0{
            counter = counter - 1
        }
        
       myImageView.image = UIImage(named: "frame\(counter).png")
        
            
        
    }
    

}

