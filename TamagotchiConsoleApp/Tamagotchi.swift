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
    var isIll: Bool
    var isAsleep: Bool
    
    init() {
        hunger = 5
        thirst = 5
        isIll = false
        isAsleep = false
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
    
    func recieveMedicine() {
        if isIll {
            isIll = false
        }
    }
    
    func sleep() {
        if !isAsleep {
            isAsleep = true
        }
    }
    
    func returnStats() -> String {
        return """
Hunger: \(hunger)
Thirst: \(thirst)
Is currently ill: \(isIll)
Is currently asleep: \(isAsleep)
"""
    }
}
