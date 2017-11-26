//
//  main.swift
//  EECS398HW11Part2
//
//  Created by Matthew Sheehan on 11/26/17.
//  Copyright © 2017 Matthew Sheehan. All rights reserved.
//
//Hello this is my program
import Foundation

class Person {
    let age, height: UInt32 //Height in inches
    let name, eyecolor: String
    init(age: UInt32, name: String, height: UInt32, eyecolor: String)
    {
        self.age = age
        self.name = name
        self.height = height
        self.eyecolor = eyecolor
    }
    var fav_prem_team = "Manchester United"
}

func fortune_teller(human: Person) -> String
{
    var random = arc4random_uniform(5);
    var fortune = (human.age + human.height) % (random + 1);
    switch fortune {
    case 0:
        return "The road to riches is paved with Soylent & EECS Projects"
    case 1:
        return "There is only one constant joy in life; seeing a dog."
    case 2:
        return "JavaScript can provide money, but it cannot provide happiness; only pain"
    case 3:
        return "I've spent too much time coming up with these. Figure it out on your own don't trust me, why do you trust some randomized fortune teller what is wrong with you?"
    case 4:
        return "Ever notice how you successful friends don't post inspirational quotes or use horscopes/fortunes? Hint. Hint. Hint."
    default:
        return "Meh. I don't feel like it. Maybe go to the gym?"
    }
    
}

var Chris = Person(age: 35, name: "Chris", height: 68, eyecolor: "blue")
var Matt = Person(age: 21, name: "Matt", height: 65, eyecolor: "blue")
var Jenny = Person(age: 25, name: "Jenny", height: 63, eyecolor: "brown")
print(fortune_teller(human: Chris))
print(fortune_teller(human: Matt))
print(fortune_teller(human: Jenny))


