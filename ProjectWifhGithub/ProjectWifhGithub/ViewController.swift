//
//  ViewController.swift
//  ProjectWifhGithub
//
//  Created by Mirian Santana on 07/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btStart(_ sender: Any) {
        if let screen = storyboard?.instantiateViewController(withIdentifier: "navigation") {
            
            self.present(screen, animated: true)
        }
        
    }
    
}

