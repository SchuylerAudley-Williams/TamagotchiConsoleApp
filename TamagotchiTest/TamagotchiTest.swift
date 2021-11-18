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
        //asssert
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
}
