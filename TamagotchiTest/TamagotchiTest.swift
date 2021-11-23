//
//  TamagotchiTest.swift
//  TamagotchiTest
//
//  Created by Audley-Williams, Schuyler (SPH) on 18/11/2021.
//

import XCTest

class TamagotchiTest: XCTestCase {
    func testFeedReducesTamagotchiHungerBy1() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        tamagotchi.eat()
        //assert
        XCTAssertEqual(tamagotchi.hunger, 4)
    }
    
    func testFeedWhenHungerIs0DoesNotReduceHunger() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        tamagotchi.hunger = 0
        tamagotchi.eat()
        //assert
        XCTAssertEqual(tamagotchi.hunger, 0)
    }
    
    func testDrinkReducesThirstBy1() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        tamagotchi.drink()
        //assert
        XCTAssertEqual(tamagotchi.thirst, 4)
    }
    
    func testDrinkDoesNotReduceThirstWhenThirstIs0() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        tamagotchi.thirst = 0
        tamagotchi.drink()
        //assert
        XCTAssertEqual(tamagotchi.thirst, 0)
        
    }
    
    func testRecieveMedicineChangesIsIllFromTrueToFalse() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        tamagotchi.isIll = true
        tamagotchi.recieveMedicine()
        //assert
        XCTAssertEqual(tamagotchi.isIll, false)
    }
    
    func testSleepChangesIsAsleepFromFalseToTrue() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        tamagotchi.sleep()
        //assert
        XCTAssertEqual(tamagotchi.isAsleep, true)
    }
    
    func testReturnStatsReturnsStats() {
        //arrange
        let tamagotchi = Tamagotchi()
        //act
        let tamagotchiStats = tamagotchi.returnStats()
        //assert
        let defaultOutput = """
Hunger: 5
Thirst: 5
Is currently ill: false
Is currently asleep: false
"""
        XCTAssertEqual(tamagotchiStats, defaultOutput)
    }
}
