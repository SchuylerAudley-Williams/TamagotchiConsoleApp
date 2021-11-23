//
//  main.swift
//  TamagotchiConsoleApp
//
//  Created by Audley-Williams, Schuyler (SPH) on 18/11/2021.
//

import Foundation

func menu() {
    let tamagotchi = Tamagotchi()
    
    var playing = true
    
    while playing {
        print("""
1. Display stats
2. Feed
3. Give a drink
4. Put to sleep
5. Give medicine
6. Quit
""")
        if let input = readLine() {
            if let choice = Int(input) {
                switch choice {
                case 1:
                    print(tamagotchi.returnStats())
                case 2:
                    tamagotchi.eat()
                case 3:
                    tamagotchi.drink()
                case 4:
                    tamagotchi.sleep()
                case 5:
                    tamagotchi.recieveMedicine()
                case 6:
                    playing = false
                    break
                default:
                    print("Invalid option")
                }
            } else {
                print("Invalid input")
            }
        }
    }
}

menu()

