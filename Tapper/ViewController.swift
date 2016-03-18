//
//  ViewController.swift
//  Tapper
//
//  Created by Ryan Alexander Mansker on 3/18/16.
//  Copyright © 2016 Ryan Alexander Mansker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    
    //MARK: Properties
    var maxTaps: Int = 0
    var currentTaps: Int = 0
    
    
    //MARK: Functions
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            logoImg.hidden = true
            howManyTapsTxt.hidden = true
            playBtn.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            updateTapsLbl()
        }
    }
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps++
        updateTapsLbl()
        if isGameOver() {
            maxTaps = 0
            howManyTapsTxt.text = ""
            logoImg.hidden = false
            howManyTapsTxt.hidden = false
            playBtn.hidden = false
            
            tapBtn.hidden = true
            tapsLbl.hidden = true
            
        }
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
        return false
    }
    
    func updateTapsLbl() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    
}

