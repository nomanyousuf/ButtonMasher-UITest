//
//  ViewController.swift
//  UITest
//
//  Created by Noman Yousuf on 11/27/19.
//  Copyright © 2019 colors. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var  UIViewMain: UIView!
    @IBOutlet weak var  button: UIButton!
    var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
        func getRandomColor() -> UIColor {
             let r:CGFloat  = .random(in: 0...1)
             let g:CGFloat  = .random(in: 0...1)
             let b:CGFloat  = .random(in: 0...1)
             return UIColor(red: r, green: g, blue: b, alpha: 1)
        }
    

    @IBAction func myButton(_ sender: Any){
        UIViewMain.backgroundColor = getRandomColor()
        myLabel = UILabel(frame: CGRect(x: UIScreen.main.bounds.midX - 100, y: 200, width: 200, height: 30))
        myLabel.text = "Label text"
        myLabel.textColor = .green
        view.addSubview(myLabel)
    }
    
    
}

