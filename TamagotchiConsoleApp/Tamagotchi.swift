//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Audley-Williams, Schuyler (SPH) on 18/11/2021.
//

import Foundation

class Tamagotchi {
    var hunger: Int
    var thirst: Int
    
    init() {
        hunger = 5
        thirst = 5
    }
    
    func eat() {
        if hunger != 0 {
            hunger -= 1
        }
    }
    
    func drink() {
        if thirst != 0 {
            thirst -= 1
        }
    }
}
