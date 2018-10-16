//
//  CarsAPI.swift
//  CarsMVVM
//
//  Created by Adolfho Athyla on 15/10/18.
//  Copyright © 2018 a7hyla. All rights reserved.
//

import UIKit

class CarsAPI: NSObject {
    static func loadAllCars(completion: ((_ cars: [Car]) -> ())) {
        let cars = [
            Car(modelo: "Celta", ano: 2010),
            Car(modelo: "Classic", ano: 2010),
            Car(modelo: "Space Fox", ano: 2006),
            Car(modelo: "Celta", ano: 2006),
            Car(modelo: "Blazer", ano: 2002),
            Car(modelo: "Parati", ano: 1996)
        ]
        completion(cars)
    }
}
