//
//  ViewController.swift
//  LionsAndTiger
//
//  Created by kabimany on 5/28/17.
//  Copyright © 2017 yehkay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var tigersArray:[Tiger] = []
    var currentRandomInt: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myTiger = Tiger(age:3, name:"Sher Khan", breed:"Bengal", image:UIImage(named: "BengalTiger.jpg")! )
        let secondTiger = Tiger(age: 5, name: "Indo Indo", breed: "Indochinese", image:UIImage(named: "IndochineseTiger.jpg")!)
        let thirdTiger = Tiger(age: 3, name: "Mal Mal", breed: "Malayan", image:UIImage(named: "MalayanTiger.jpg")!)
        let fourthTiger = Tiger(age: 7, name: "Sibe Sib", breed: "Siberian", image:UIImage(named: "SiberianTiger.jpg")!)
        
        
        tigersArray += [myTiger, secondTiger, thirdTiger, fourthTiger]
        setTiger()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func nextBarButtonItemPress(_ sender: Any) {
        setTiger()
    }
    
    func generateIndex() -> Int{
        let index = Int(arc4random_uniform( UInt32( tigersArray.count ) ))
        if index == currentRandomInt{
            return generateIndex()
        } else {
            currentRandomInt = index
            return index
        }
    }
    
    func setTiger(){
        let index = generateIndex()
        let randomTiger = tigersArray[index]
        
        UIView.transition(
            with: self.view,
            duration: 0.3,
            options: UIViewAnimationOptions.transitionCrossDissolve,
            animations: {
                self.myImageView.image = randomTiger.image
                self.nameLabel.text = randomTiger.name
                self.ageLabel.text = "\(randomTiger.age)"
                self.breedLabel.text = randomTiger.breed
            },
            completion: {
                (finished: Bool) -> () in
            })
    }

}

