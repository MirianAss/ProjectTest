//
//  ScreenOneViewController.swift
//  ProjectWifhGithub
//
//  Created by Mirian Santana on 07/03/23.
//

import UIKit

class ScreenOneViewController: UIViewController {
    
    var screenOne = LuxuryBrands(imageOne: "", imageTwo: "", title: "", text: "")

    @IBOutlet weak var lblScreenOne: UILabel!
    @IBOutlet weak var imageScreenOne: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btAdvance(_ sender: Any) {
    }
    
    @IBAction func btBack(_ sender: Any) {
    }
    
}
