//
//  TableView.swift
//  ProjectWifhGithub
//
//  Created by Mirian Santana on 07/03/23.
//

import UIKit

class TableView: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var brandOne = LuxuryBrands(imageOne: "louis vuitton", imageTwo: "", title: "Louis Vuitton", text: "")
    var brandTwo = LuxuryBrands(imageOne: "gucci", imageTwo: "", title: "Gucci", text: "")
    var brandThree = LuxuryBrands(imageOne: "Chanel", imageTwo: "", title: "Chanel", text: "")
    var brandFour = LuxuryBrands(imageOne: "hermes", imageTwo: "", title: "Hermès", text: "")
    var brandFive = LuxuryBrands(imageOne: "cartier", imageTwo: "", title: "Cartier", text: "")
    var brandSix = LuxuryBrands(imageOne: "dior", imageTwo: "", title: "Dior", text: "")
    
    var arrayBrands: [LuxuryBrands] = []
    
    func luxury() {
        arrayBrands = [brandOne, brandTwo, brandThree, brandFour, brandFive, brandSix]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        luxury()
        tableView.delegate = self
        tableView.dataSource = self
        let uiNib = UINib(nibName: "CustomCellXib", bundle: nil)
        tableView.register(uiNib, forCellReuseIdentifier: "cellTwo")
    }

}
extension TableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayBrands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath) as? CustomCellXib {
            
            cell.setupLuxuryBrands(luxury: arrayBrands[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
}
extension TableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screen = storyboard?.instantiateViewController(withIdentifier: "screenOne") as? ScreenOneViewController {
            
            screen.screenOne = arrayBrands[indexPath.row]
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
}
