import SwiftUI
import SwiftUISnappingScrollView

struct ContentView: View {
    let heroesArray = HeroViewModel().getHeroesArray()
    var body: some View {
        Color.init(UIColor(red: 0.17, green: 0.15, blue: 0.17, alpha: 1.00))
            .ignoresSafeArea() // Ignore just for the color
            .overlay(
                
                Grid {
                    
                    VStack {
                        Image("marvel").resizable().scaledToFit().frame(width: 150, height: 50).padding(50)
                        Text("Choose Your Hero!")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(50)
                    }
                    
                    SnappingScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(heroesArray, id: \.name) { hero in
                                HeroCard(hero: hero)
                            }
                            .scrollSnappingAnchor(.bounds)
                        }
                    }
                }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
