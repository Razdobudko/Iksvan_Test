//
//  Music.swift
//  Iksvan_Test
//
//  Created by Veranika Razdabudzka on 10.09.22.
//

import Foundation

struct Music {
    
    let name: String
    let track: String
    let image: String
    let trackName: String?
    
    static func myMusic() -> [Music] {
        let music = Music(name: "The Weeknd ft. Daft Punk", track: "Star-boy", image: "StarBoy", trackName: "The Weeknd ft. Daft Punk - Star-boy")
        let music2 = Music(name: "Naughty Boy ft. Beyonce", track: "Runnin", image: "Runnin", trackName: "Naughty Boy ft. Beyonce - Runnin")
        let music3 = Music(name: "Maroon 5", track: "Wait", image: "Wait", trackName: "Maroon 5 - Wait")
        
        return [music, music2, music3]
    }
}
