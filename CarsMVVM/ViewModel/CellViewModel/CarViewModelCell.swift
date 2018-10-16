//
//  CarViewModelCell.swift
//  CarsMVVM
//
//  Created by Adolfho Athyla on 15/10/18.
//  Copyright © 2018 a7hyla. All rights reserved.
//

import UIKit

class CarViewModelCell: NSObject {
    var car: Car?
    
    init(car: Car) {
        self.car = car
    }
    
    func modeloValue() -> String? {
        return car?.modelo
    }
    
    func anoValue() -> Int? {
        return car?.ano
    }
}
