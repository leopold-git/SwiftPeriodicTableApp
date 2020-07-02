//
//  ViewController.swift
//  SimpleCenter
//
//  Created by Leo on 01.07.20.
//  Copyright © 2020 Basil Fawlty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func gotoNextElement(_ sender: UIButton){
        currentElIndex += 1
        if currentElIndex >= elemList.count{
            currentElIndex = 0
        }
        updateEl()
    }
    @IBAction func showAnswer(_ sender: UIButton){
        answerLabel.text = elemList[currentElIndex]
       }
    
    let elemList = ["Carbon", "Chlorine", "Gold", "Sodium"]
    var currentElIndex = 0
    
    func updateEl(){
        answerLabel.text = "?"
        let elemName = elemList[currentElIndex]
        let image = UIImage(named:elemName)
        imageView.image = image
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateEl()
    }


}

