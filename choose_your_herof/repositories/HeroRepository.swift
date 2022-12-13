import Foundation

class HeroRepository {
    private let heroesList: [Hero] = [Hero(name: "Apocalypse", imageAsset: "apocalypse"),
                                           Hero(name: "Captain America", imageAsset: "captainamerica"),
                                           Hero(name: "Deadpool", imageAsset: "deadpool"),
                                           Hero(name: "Iron Man", imageAsset: "ironman"),
                                           Hero(name: "Nebula", imageAsset: "nebula"),
                                           Hero(name: "Peggy Carter", imageAsset: "peggycarter"),
                                           Hero(name: "Scarlet Witch", imageAsset: "scarletwitch"),
                                           Hero(name: "Sif", imageAsset: "sif"),
                                           Hero(name: "Spiderman", imageAsset: "spiderman"),
                                           Hero(name: "Storm", imageAsset: "storm")]
    
    func getHeroesArray() -> [Hero] {
        return heroesList
    }
}
