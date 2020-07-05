//
//  SandwicheDetailsView.swift
//  Sandwiches
//
//  Created by ahmed elmemy on 7/4/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct SandwicheDetailsView: View {
    @State var Sandwiche:SandwichesModel
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(Sandwiche.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        self.zoomed.toggle()
                    }
            }
            Spacer(minLength: 0)
            if Sandwiche.isSpicy == true{
                HStack {
                    Spacer()
                    Image(systemName: "flame.fill")
                    Text("Spicy")
                        .font(.title)
                    Spacer()
                }
                .padding(.all)
                .background(Color.red)
                .foregroundColor(.yellow)
            }
            
        }
        .navigationBarTitle(Sandwiche.name)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SandwicheDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SandwicheDetailsView(Sandwiche: testData[0])
        }
    }
}
