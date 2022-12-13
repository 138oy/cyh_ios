import Foundation
import SwiftUI

struct HeroCard: View {
    @State var hero: Hero
    
    var body: some View {
        VStack {
            Image(hero.imageAsset)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 450)
        }
        .cornerRadius(10)
        .padding(10)
        .overlay(TextOverlay(name: hero.name), alignment: .bottomLeading)
    }
}

struct TextOverlay: View {
    @State var name: String
    
    var body: some View {
        ZStack {
            Text(name)
                .foregroundColor(.white)
                .padding(5)
        }
        .padding(15)
    }
}
