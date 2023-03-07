//
//  TableView.swift
//  ProjectWifhGithub
//
//  Created by Mirian Santana on 07/03/23.
//

import UIKit

class TableView: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var brandOne = LuxuryBrands(imageOne: "", imageTwo: "", title: "", text: "")
    var brandTwo = LuxuryBrands(imageOne: "", imageTwo: "", title: "", text: "")
    var brandThree = LuxuryBrands(imageOne: "", imageTwo: "", title: "", text: "")
    var brandFour = LuxuryBrands(imageOne: "", imageTwo: "", title: "", text: "")
    var brandFive = LuxuryBrands(imageOne: "", imageTwo: "", title: "", text: "")
    var brandSix = LuxuryBrands(imageOne: "", imageTwo: "", title: "", text: "")
    var brandSeven = LuxuryBrands(imageOne: "", imageTwo: "", title: "", text: "")
    
    var arrayBrands: [LuxuryBrands] = []
    
    func luxury() {
        arrayBrands = [brandOne, brandTwo, brandThree, brandFour, brandFive, brandSix, brandSeven]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
