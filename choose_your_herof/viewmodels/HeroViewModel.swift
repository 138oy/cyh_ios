import Foundation

class HeroViewModel {
    private let repository: HeroRepository = HeroRepository()
    
    func getHeroesArray() -> [Hero] {
        return repository.getHeroesArray()
    }
}
