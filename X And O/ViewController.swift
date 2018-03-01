//
//  ViewController.swift
//  X And O
//
//  Created by Sayed Abdo on 2/20/18.
//  Copyright © 2018 sayedAbdo. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonFive: UIButton!
    @IBOutlet weak var buttonSix: UIButton!
    @IBOutlet weak var buttonSeven: UIButton!
    @IBOutlet weak var buttonEight: UIButton!
    @IBOutlet weak var buttonNine: UIButton!
    var musicPlayer: AVAudioPlayer!
    var firstX = 0
    var check = 0
    var first : Bool = false
    var att : Bool = false
    var def: Bool = false
    var single : Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        //initAudio()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playX(_ sender: Any) {
        if (sender as AnyObject).currentTitle != "X" || (sender as AnyObject).currentTitle != "O" {
            (sender as AnyObject).setTitle("X", for: .normal)
            print("Done")
            firstX = firstX + 1
        }
        check = check + 1
        playO()
        win()
        print(check)
    }
    
    func playO() -> Bool  {
        first = firststep()
        if first == true{
            return true
        }
        att=attack()
        if att == true{
            return true
        }
        def=defence()
        if def == true{
            return true
        }
        single=singlecase()
        if single == true{
            return true
        }
        if (buttonOne.currentTitle?.isEmpty != false){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonThree.currentTitle?.isEmpty != false){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonTwo.currentTitle?.isEmpty != false){
            buttonTwo.setTitle("O", for: .normal)
            buttonTwo.setTitleColor(.black, for: .normal)
            buttonTwo.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonFour.currentTitle?.isEmpty != false){
            buttonFour.setTitle("O", for: .normal)
            buttonFour.setTitleColor(.black, for: .normal)
            buttonFour.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonFive.currentTitle?.isEmpty != false){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonSix.currentTitle?.isEmpty != false){
            buttonSix.setTitle("O", for: .normal)
            buttonSix.setTitleColor(.black, for: .normal)
            buttonSix.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonSeven.currentTitle?.isEmpty != false){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonEight.currentTitle?.isEmpty != false){
            buttonEight.setTitle("O", for: .normal)
            buttonEight.setTitleColor(.black, for: .normal)
            buttonEight.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonNine.currentTitle?.isEmpty != false){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        return false
    }
    func win(){
        if (buttonOne.currentTitle    == "X"   &&  buttonTwo.currentTitle    == "X"    &&  buttonThree.currentTitle  == "X")  ||
           (buttonFour.currentTitle   == "X"   &&  buttonFive.currentTitle   == "X"    &&  buttonSix.currentTitle    == "X")  ||
           (buttonSeven.currentTitle  == "X"   &&  buttonEight.currentTitle  == "X"    &&  buttonNine.currentTitle   == "X")  ||
           (buttonOne.currentTitle    == "X"   &&  buttonFour.currentTitle   == "X"    &&  buttonSeven.currentTitle  == "X")  ||
           (buttonTwo.currentTitle    == "X"   &&  buttonFive.currentTitle   == "X"    &&  buttonEight.currentTitle  == "X")  ||
           (buttonOne.currentTitle    == "X"   &&  buttonFive.currentTitle   == "X"    &&  buttonNine.currentTitle   == "X")  ||
           (buttonThree.currentTitle  == "X"   &&  buttonFive.currentTitle   == "X"    &&  buttonSeven.currentTitle  == "X")
            {
                let alert = UIAlertController(title: "Win 😊😊😊", message: "Thanks", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Play Again", style: .default) { _ in
                    print("X")
                    self.firstX=0
                    self.check=0
                    self.loadView()
                    })
                    present(alert, animated: true)
        }
        else if
            (buttonOne.currentTitle    == "O"   &&  buttonTwo.currentTitle    == "O"    &&  buttonThree.currentTitle  == "O")  ||
            (buttonFour.currentTitle   == "O"   &&  buttonFive.currentTitle   == "O"    &&  buttonSix.currentTitle    == "O")  ||
            (buttonSeven.currentTitle  == "O"   &&  buttonEight.currentTitle  == "O"    &&  buttonNine.currentTitle   == "O")  ||
            (buttonOne.currentTitle    == "O"   &&  buttonFour.currentTitle   == "O"    &&  buttonSeven.currentTitle  == "O")  ||
            (buttonTwo.currentTitle    == "O"   &&  buttonFive.currentTitle   == "O"    &&  buttonEight.currentTitle  == "O")  ||
            (buttonThree.currentTitle  == "O"   &&  buttonSix.currentTitle    == "O"    &&  buttonNine.currentTitle   == "O")  ||
            (buttonOne.currentTitle    == "O"   &&  buttonFive.currentTitle   == "O"    &&  buttonNine.currentTitle   == "O")  ||
            (buttonThree.currentTitle  == "O"   &&  buttonFive.currentTitle   == "O"    &&  buttonSeven.currentTitle  == "O")
        {
                    let alert = UIAlertController(title: "Loss 😔😔😔", message: "Sorry you can't win", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "play Again ", style: .default) { _ in
                            print("O")
                            self.firstX=0
                            self.check=0
                            self.loadView()
                        })
                        present(alert, animated: true)
            
        }
        else {
            if(check == 9){
                let alert = UIAlertController(title: "Equal 🙌🙌🙌", message: "Sorry you can't win", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "play Again ", style: .default) { _ in
                    print("Equal")
                    self.firstX=0
                    self.check=0
                    self.loadView()
                })
                present(alert, animated: true)
            }
        }
    }
    func firststep() -> Bool {
        //first step
        if (firstX == 1 && buttonFive.currentTitle ==  "X" ){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        if (firstX == 1 && buttonFive.currentTitle != "X" ){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        return false
    }
    func attack() -> Bool {
        ///////////////////////////
        ///////////////////////////
        ///////////////////////////
        ////////attack/////////////
        ///////////////////////////
        ///////////////////////////
        ///////////////////////////
        //row one
        if(buttonOne.currentTitle    == "O"   &&  buttonTwo.currentTitle    == "O" && buttonThree.currentTitle != "X" && buttonThree.currentTitle != "O"){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonOne.currentTitle    == "O"   &&  buttonThree.currentTitle  == "O" && buttonTwo.currentTitle != "X" && buttonTwo.currentTitle != "O"){
            buttonTwo.setTitle("O", for: .normal)
            buttonTwo.setTitleColor(.black, for: .normal)
            buttonTwo.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonThree.currentTitle    == "O"   &&  buttonTwo.currentTitle  == "O" && buttonOne.currentTitle != "X" && buttonOne.currentTitle != "O"){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        //row two
        if(buttonFour.currentTitle    == "O"   &&  buttonFive.currentTitle  == "O" && buttonSix.currentTitle != "X" && buttonSix.currentTitle != "O"){
            buttonSix.setTitle("O", for: .normal)
            buttonSix.setTitleColor(.black, for: .normal)
            buttonSix.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFour.currentTitle    == "O"   &&  buttonSix.currentTitle   == "O" && buttonFive.currentTitle != "X" && buttonFive.currentTitle != "O"){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFive.currentTitle    == "O"   &&  buttonSix.currentTitle   == "O" && buttonFour.currentTitle != "X" && buttonFour.currentTitle != "O"){
            buttonFour.setTitle("O", for: .normal)
            buttonFour.setTitleColor(.black, for: .normal)
            buttonFour.isEnabled = false
            check = check + 1
            return true
        }
        //row three
        if(buttonSeven.currentTitle    == "O"   &&  buttonEight.currentTitle  == "O" && buttonNine.currentTitle != "X" && buttonNine.currentTitle != "O"){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonSeven.currentTitle    == "O"   &&  buttonNine.currentTitle    == "O" && buttonEight.currentTitle != "X" && buttonEight.currentTitle != "O"){
            buttonEight.setTitle("O", for: .normal)
            buttonEight.setTitleColor(.black, for: .normal)
            buttonEight.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonEight.currentTitle    == "O"   &&  buttonNine.currentTitle    == "O" && buttonSeven.currentTitle != "X" && buttonSeven.currentTitle != "O"){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        //colume one
        if(buttonOne.currentTitle    == "O"   &&  buttonFour.currentTitle    == "O" && buttonSeven.currentTitle != "X" && buttonSeven.currentTitle != "O"){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonOne.currentTitle    == "O"   &&  buttonSeven.currentTitle    == "O" && buttonFour.currentTitle != "X" && buttonFour.currentTitle != "O"){
            buttonFour.setTitle("O", for: .normal)
            buttonFour.setTitleColor(.black, for: .normal)
            buttonFour.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFour.currentTitle    == "O"   &&  buttonSeven.currentTitle    == "O" && buttonOne.currentTitle != "X" && buttonOne.currentTitle != "O"){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        //colume two
        if(buttonTwo.currentTitle    == "O"   &&  buttonFive.currentTitle    == "O" && buttonEight.currentTitle != "X" && buttonEight.currentTitle != "O"){
            buttonEight.setTitle("O", for: .normal)
            buttonEight.setTitleColor(.black, for: .normal)
            buttonEight.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonTwo.currentTitle    == "O"   &&  buttonEight.currentTitle    == "O" && buttonFive.currentTitle != "X" && buttonFive.currentTitle != "O"){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFive.currentTitle    == "O"   &&  buttonEight.currentTitle    == "O" && buttonTwo.currentTitle != "X" && buttonTwo.currentTitle != "O"){
            buttonTwo.setTitle("O", for: .normal)
            buttonTwo.setTitleColor(.black, for: .normal)
            buttonTwo.isEnabled = false
            check = check + 1
            return true
        }
        //colume three
        if(buttonThree.currentTitle    == "O"   &&  buttonSix.currentTitle    == "O" && buttonNine.currentTitle != "X" && buttonNine.currentTitle != "O"){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonThree.currentTitle    == "O"   &&  buttonNine.currentTitle    == "O" && buttonSix.currentTitle != "X" && buttonSix.currentTitle != "O"){
            buttonSix.setTitle("O", for: .normal)
            buttonSix.setTitleColor(.black, for: .normal)
            buttonSix.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonSix.currentTitle    == "O"   &&  buttonNine.currentTitle    == "O" && buttonThree.currentTitle != "X" && buttonThree.currentTitle != "O"){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
        //main D
        if(buttonOne.currentTitle    == "O"   &&  buttonFive.currentTitle    == "O" && buttonNine.currentTitle != "X" && buttonNine.currentTitle != "O"){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonOne.currentTitle    == "O"   &&  buttonNine.currentTitle    == "O" && buttonFive.currentTitle != "X" && buttonFive.currentTitle != "O"){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFive.currentTitle    == "O"   &&  buttonNine.currentTitle    == "O" && buttonOne.currentTitle != "X" && buttonOne.currentTitle != "O"){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        //not main D
        if(buttonThree.currentTitle    == "O"   &&  buttonFive.currentTitle    == "O" && buttonSeven.currentTitle != "X" && buttonSeven.currentTitle != "O"){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonThree.currentTitle    == "O"   &&  buttonNine.currentTitle    == "O" && buttonFive.currentTitle != "X" && buttonFive.currentTitle != "O"){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFive.currentTitle    == "O"   &&  buttonSeven.currentTitle    == "O" && buttonThree.currentTitle != "X" && buttonThree.currentTitle != "O"){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
        return false
    }
    func defence() -> Bool {
        ///////////////////////////
        ///////////////////////////
        ///////////////////////////
        //////////defence//////////
        ///////////////////////////
        ///////////////////////////
        ///////////////////////////
        //row one
        if(buttonOne.currentTitle    == "X"   &&  buttonTwo.currentTitle    == "X" && buttonThree.currentTitle != "X" && buttonThree.currentTitle != "O"){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonOne.currentTitle    == "X"   &&  buttonThree.currentTitle  == "X" && buttonTwo.currentTitle != "X" && buttonTwo.currentTitle != "O"){
            buttonTwo.setTitle("O", for: .normal)
            buttonTwo.setTitleColor(.black, for: .normal)
            buttonTwo.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonThree.currentTitle    == "X"   &&  buttonTwo.currentTitle  == "X" && buttonOne.currentTitle != "X" && buttonOne.currentTitle != "O"){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        //row two
        if(buttonFour.currentTitle    == "X"   &&  buttonFive.currentTitle  == "X" && buttonSix.currentTitle != "X" && buttonSix.currentTitle != "O"){
            buttonSix.setTitle("O", for: .normal)
            buttonSix.setTitleColor(.black, for: .normal)
            buttonSix.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFour.currentTitle    == "X"   &&  buttonSix.currentTitle   == "X" && buttonFive.currentTitle != "X" && buttonFive.currentTitle != "O"){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFive.currentTitle    == "X"   &&  buttonSix.currentTitle   == "X" && buttonFour.currentTitle != "X" && buttonFour.currentTitle != "O"){
            buttonFour.setTitle("O", for: .normal)
            buttonFour.setTitleColor(.black, for: .normal)
            buttonFour.isEnabled = false
            check = check + 1
            return true
        }
        //row three
        if(buttonSeven.currentTitle    == "X"   &&  buttonEight.currentTitle  == "X" && buttonNine.currentTitle != "X" && buttonNine.currentTitle != "O"){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonSeven.currentTitle    == "X"   &&  buttonNine.currentTitle    == "X" && buttonEight.currentTitle != "X" && buttonEight.currentTitle != "O"){
            buttonEight.setTitle("O", for: .normal)
            buttonEight.setTitleColor(.black, for: .normal)
            buttonEight.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonEight.currentTitle    == "X"   &&  buttonNine.currentTitle    == "X" && buttonSeven.currentTitle != "X" && buttonSeven.currentTitle != "O"){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        //colume one
        if(buttonOne.currentTitle    == "X"   &&  buttonFour.currentTitle    == "X" && buttonSeven.currentTitle != "X" && buttonSeven.currentTitle != "O"){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonOne.currentTitle    == "X"   &&  buttonSeven.currentTitle    == "X" && buttonFour.currentTitle != "X" && buttonFour.currentTitle != "O"){
            buttonFour.setTitle("O", for: .normal)
            buttonFour.setTitleColor(.black, for: .normal)
            buttonFour.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFour.currentTitle    == "X"   &&  buttonSeven.currentTitle    == "X" && buttonOne.currentTitle != "X" && buttonOne.currentTitle != "O"){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        //colume two
        if(buttonTwo.currentTitle    == "X"   &&  buttonFive.currentTitle    == "X" && buttonEight.currentTitle != "X" && buttonEight.currentTitle != "O"){
            buttonEight.setTitle("O", for: .normal)
            buttonEight.setTitleColor(.black, for: .normal)
            buttonEight.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonTwo.currentTitle    == "X"   &&  buttonEight.currentTitle    == "X" && buttonFive.currentTitle != "X" && buttonFive.currentTitle != "O"){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFive.currentTitle    == "X"   &&  buttonEight.currentTitle    == "X" && buttonTwo.currentTitle != "X" && buttonTwo.currentTitle != "O"){
            buttonTwo.setTitle("O", for: .normal)
            buttonTwo.setTitleColor(.black, for: .normal)
            buttonTwo.isEnabled = false
            check = check + 1
            return true
        }
        //colume three
        if(buttonThree.currentTitle    == "X"   &&  buttonSix.currentTitle    == "X" && buttonNine.currentTitle != "X" && buttonNine.currentTitle != "O"){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonThree.currentTitle    == "X"   &&  buttonNine.currentTitle    == "X" && buttonSix.currentTitle != "X" && buttonSix.currentTitle != "O"){
            buttonSix.setTitle("O", for: .normal)
            buttonSix.setTitleColor(.black, for: .normal)
            buttonSix.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonSix.currentTitle    == "X"   &&  buttonNine.currentTitle    == "X" && buttonThree.currentTitle != "X" && buttonThree.currentTitle != "O"){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
        //main D
        if(buttonOne.currentTitle    == "X"   &&  buttonFive.currentTitle    == "X" && buttonNine.currentTitle != "X" && buttonNine.currentTitle != "O"){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonOne.currentTitle    == "X"   &&  buttonNine.currentTitle    == "X" && buttonFive.currentTitle != "X" && buttonFive.currentTitle != "O"){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFive.currentTitle    == "X"   &&  buttonNine.currentTitle    == "X" && buttonOne.currentTitle != "X" && buttonOne.currentTitle != "O"){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        //not main D
        if(buttonThree.currentTitle    == "X"   &&  buttonFive.currentTitle    == "X" && buttonSeven.currentTitle != "X" && buttonSeven.currentTitle != "O"){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonThree.currentTitle    == "X"   &&  buttonNine.currentTitle    == "X" && buttonFive.currentTitle != "X" && buttonFive.currentTitle != "O"){
            buttonFive.setTitle("O", for: .normal)
            buttonFive.setTitleColor(.black, for: .normal)
            buttonFive.isEnabled = false
            check = check + 1
            return true
        }
        if(buttonFive.currentTitle    == "X"   &&  buttonSeven.currentTitle    == "X" && buttonThree.currentTitle != "X" && buttonThree.currentTitle != "O"){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
       
        return false
    }
    func singlecase() -> Bool {
        
        ///////
        if (buttonOne.currentTitle == "O" && buttonTwo.currentTitle?.isEmpty != false){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonOne.currentTitle == "O" && buttonFour.currentTitle?.isEmpty != false){
            buttonFour.setTitle("O", for: .normal)
            buttonFour.setTitleColor(.black, for: .normal)
            buttonFour.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonSeven.currentTitle == "O" && buttonEight.currentTitle?.isEmpty != false){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonSeven.currentTitle == "O" && buttonFour.currentTitle?.isEmpty != false){
            buttonOne.setTitle("O", for: .normal)
            buttonOne.setTitleColor(.black, for: .normal)
            buttonOne.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonThree.currentTitle == "O" && buttonSix.currentTitle?.isEmpty != false){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonNine.currentTitle == "O" && buttonSix.currentTitle?.isEmpty != false){
            buttonThree.setTitle("O", for: .normal)
            buttonThree.setTitleColor(.black, for: .normal)
            buttonThree.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonNine.currentTitle == "O" && buttonEight.currentTitle?.isEmpty != false){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonSix.currentTitle == "O" && buttonThree.currentTitle?.isEmpty != false){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonEight.currentTitle == "O" && buttonSeven.currentTitle?.isEmpty != false){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonFive.currentTitle == "O" && buttonOne.currentTitle?.isEmpty != false && buttonNine.currentTitle?.isEmpty != false){
            buttonNine.setTitle("O", for: .normal)
            buttonNine.setTitleColor(.black, for: .normal)
            buttonNine.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonFive.currentTitle == "O" && buttonTwo.currentTitle?.isEmpty != false && buttonEight.currentTitle?.isEmpty != false){
            buttonTwo.setTitle("O", for: .normal)
            buttonTwo.setTitleColor(.black, for: .normal)
            buttonTwo.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonFive.currentTitle == "O" && buttonThree.currentTitle?.isEmpty != false && buttonSeven.currentTitle?.isEmpty != false){
            buttonSeven.setTitle("O", for: .normal)
            buttonSeven.setTitleColor(.black, for: .normal)
            buttonSeven.isEnabled = false
            check = check + 1
            return true
        }
        if (buttonFive.currentTitle == "O" && buttonFour.currentTitle?.isEmpty != false && buttonSix.currentTitle?.isEmpty != false){
            buttonFour.setTitle("O", for: .normal)
            buttonFour.setTitleColor(.black, for: .normal)
            buttonFour.isEnabled = false
            check = check + 1
            return true
        }
        return false
    }
    func initAudio() {
        
        let path = Bundle.main.path(forResource: "music", ofType: "mp3")!
        print(path)
        do {
            
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path)!)
            musicPlayer.prepareToPlay()
            musicPlayer.numberOfLoops = -1
            musicPlayer.play()
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
}
