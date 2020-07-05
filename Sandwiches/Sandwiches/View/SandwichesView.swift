//
//  ContentView.swift
//  Sandwiches
//
//  Created by ahmed elmemy on 7/4/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct SandwichesView: View {
    @State var sandwiches:[SandwichesModel] = []
    
    var body: some View {
        NavigationView{
            List(sandwiches){ sandwiche in
                SandwichCell(sandwiche: sandwiche)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SandwichesView(sandwiches:testData)
    }
}




