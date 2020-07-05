//
//  SandwichCell.swift
//  Sandwiches
//
//  Created by ahmed elmemy on 7/5/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct SandwichCell: View {
    @State var sandwiche:SandwichesModel
    
    var body: some View {
        NavigationLink(destination: SandwicheDetailsView(Sandwiche: sandwiche)){
            Image(sandwiche.imageName)
                .resizable()
                .frame(width: 70, height: 70)
                .aspectRatio(contentMode: .fill)
                .cornerRadius(20)
            
            VStack(alignment:.leading) {
                Text(sandwiche.name)
                Text("\(sandwiche.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .navigationBarTitle("Sandwiches")
    
    }
}
