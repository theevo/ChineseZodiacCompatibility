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
        case .Rat:
            return [.Rat, .Ox, .Dragon, .Monkey]
        case .Ox:
            return [.Rat, .Rooster, .Snake]
        case .Tiger:
            return [.Dog, .Horse, .Pig]
        case .Rabbit:
            return [.Dog, .Goat, .Pig]
        case .Dragon:
            return [.Rat, .Monkey, .Rooster]
        case .Snake:
            return [.Ox, .Rooster]
        case .Horse:
            return [.Dog, .Goat, .Tiger]
        case .Goat:
            return [.Goat, .Rabbit, .Horse, .Pig]
        case .Monkey:
            return [.Rat, .Dragon, .Dog]
        case .Rooster:
            return [.Ox, .Dragon, .Snake]
        case .Dog:
            return [.Rabbit, .Tiger, .Horse, .Monkey]
        case .Pig:
            return [.Rabbit, .Tiger, .Goat]
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
