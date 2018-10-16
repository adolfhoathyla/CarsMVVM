//
//  Car.swift
//  CarsMVVM
//
//  Created by Adolfho Athyla on 15/10/18.
//  Copyright © 2018 a7hyla. All rights reserved.
//

import UIKit

class Car: NSObject {
    var modelo: String?
    var ano: Int?
    
    init(modelo: String, ano: Int) {
        self.modelo = modelo
        self.ano = ano
    }
}
