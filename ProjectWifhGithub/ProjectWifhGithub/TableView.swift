//
//  TableView.swift
//  ProjectWifhGithub
//
//  Created by Mirian Santana on 07/03/23.
//

import UIKit

class TableView: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var brandOne = LuxuryBrands(imageOne: "louis vuitton", imageTwo: "louis2", title: "Louis Vuitton", text: "Traduzido do inglês-Louis Vuitton foi um estilista e empresário francês. Ele foi o fundador da marca Louis Vuitton de artigos de couro agora propriedade da LVMH. Antes disso, ele havia sido nomeado fabricante de baús da Imperatriz Eugênia de Montijo, esposa de Napoleão III")
    var brandTwo = LuxuryBrands(imageOne: "gucci", imageTwo: "gucci2", title: "Gucci", text: "Guccio Gucci, foi um empresário e designer de moda italiano, fundador da grife Gucci e filho de um comerciante da região de fabrico no norte da Itália.")
    var brandThree = LuxuryBrands(imageOne: "Chanel", imageTwo: "chanel2", title: "Chanel", text: "Chanel é uma casa de moda francesa de luxo fundada em 1910 por Coco Chanel em Paris. A Chanel é especializada em pronto-a-vestir feminino, produtos de luxo e acessórios e licencia seu nome e marca à Luxottica para óculos. A Chanel é bem conhecida por seu perfume nº 5 e o -Terno Chanel-.")
    var brandFour = LuxuryBrands(imageOne: "hermes", imageTwo: "hermes2", title: "Hermès", text: "Thierry Hermès foi um empresário francês que fundou a Hermès International e adquiriu o título de designer de casa de moda. Ele nasceu em 1801 em Krefeld, Alemanha. Hermès originalmente estabeleceu seu negócio como uma empresa de selas em 1837.")
    var brandFive = LuxuryBrands(imageOne: "cartier", imageTwo: "cartier2", title: "Cartier", text: "Louis-François Cartier foi um joalheiro e relojoeiro que iniciou a Maison Cartier em 1847, quando herdou de seu mestre Adolphe Picard o ateliê de jóias de rua Montergueilem Paris, e patenteia sua própria marca, o famoso coração entre suas iniciais L e C num losango, em Paris.")
    var brandSix = LuxuryBrands(imageOne: "dior", imageTwo: "dior2", title: "Dior", text: "Christian Dior foi um importante estilista francês. É o fundador da empresa de vestuário Christian Dior S.A., uma das mais famosas da moda mundial.")
    
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
