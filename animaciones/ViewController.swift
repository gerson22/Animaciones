//
//  ViewController.swift
//  animaciones
//
//  Created by Gerson Isaias on 21/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonsAnimated: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = buttonsAnimated.map({$0.round()})
        // Do any additional setup after loading the view.
    }

    @IBAction func bounce(_ sender: UIButton) {
        sender.bounce()
    }
    
    @IBAction func jump(_ sender: UIButton) {
        sender.jump()
    }
    
    @IBAction func shine(_ sender: Any) {
        let btn = sender as? UIButton
        btn?.shine()
    }
    @IBAction func pulse(_ sender: UIButton) {
        sender.pulse()
    }
    
}

