//
//  CustomCellXib.swift
//  ProjectWifhGithub
//
//  Created by Mirian Santana on 07/03/23.
//

import UIKit

class CustomCellXib: UITableViewCell {

    @IBOutlet weak var imageXib: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setupLuxuryBrands(luxury: LuxuryBrands) {
        imageXib.image = UIImage(named: luxury.imageOne)
    }
}
