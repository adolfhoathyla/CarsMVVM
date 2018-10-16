//
//  CarViewModel.swift
//  CarsMVVM
//
//  Created by Adolfho Athyla on 15/10/18.
//  Copyright © 2018 a7hyla. All rights reserved.
//

import UIKit

class CarViewModel: NSObject {
    
    var updatedList: (() -> ())?
    
    var cars = [CarViewModelCell]() {
        didSet {
            DispatchQueue.main.async {
                if let updatedList = self.updatedList {
                    updatedList()
                }
            }
        }
    }
    
    private func tryFetchData() {
        CarsAPI.loadAllCars { (cars) in
            for car in cars {
                self.cars.append(CarViewModelCell(car: car))
            }
        }
    }
    
    func numberOfRows() -> Int {
        if cars.count == 0 {
            self.tryFetchData()
        }
        return cars.count
    }
    
    func carCellVM(forIndex index: Int) -> CarViewModelCell {
        if index < self.cars.count {
            return self.cars[index]
        }
        return CarViewModelCell(car: Car(modelo: "", ano: 0))
    }
}
