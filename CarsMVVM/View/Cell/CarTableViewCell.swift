//
//  CarTableViewCell.swift
//  CarsMVVM
//
//  Created by Adolfho Athyla on 15/10/18.
//  Copyright © 2018 a7hyla. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(viewModel: CarViewModelCell) {
        textLabel?.text = viewModel.modeloValue()
        detailTextLabel?.text = "\(viewModel.anoValue() ?? 0)"
    }

}
