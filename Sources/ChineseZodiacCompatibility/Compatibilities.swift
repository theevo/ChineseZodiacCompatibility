//
//  Compatibilities.swift
//
//
//  Created by Theo Vora on 11/28/23.
//

import Foundation

public struct Compatibilities {
    public static func of(animal: Animal) -> [Animal] {
        switch animal {
            
            // correct
        case .Rat:
            return [.Rat, .Ox, .Dragon, .Monkey]
        case .Ox:
            return [.Rat, .Rooster, .Snake]
        case .Tiger:
            return [.Dog, .Horse, .Pig]
            
            // NOT CORRECT
        case .Rabbit:
            return [.Dog, .Goat, .Tiger]
        case .Dragon:
            return [.Goat, .Rabbit, .Horse, .Pig]
        case .Snake:
            return [.Dog, .Goat, .Tiger]
        case .Goat:
            return [.Goat, .Rabbit, .Horse, .Pig]
            
            // correct
        case .Horse:
            return [.Dog, .Goat, .Tiger]
        case .Monkey:
            return [.Goat, .Rabbit, .Horse, .Pig]
            
            // NOT CORRECT
        case .Rooster:
            return [.Dog, .Goat, .Tiger]
        case .Dog:
            return [.Goat, .Rabbit, .Horse, .Pig]
        case .Pig:
            return [.Dog, .Goat, .Tiger]
        }
    }
}

extension Compatibilities {
    public enum Animal: String {
        case Rat
        case Ox
        case Tiger
        case Rabbit
        case Dragon
        case Snake
        case Horse
        case Goat
        case Monkey
        case Rooster
        case Dog
        case Pig
    }
}
